
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ehea_cqe {int dummy; } ;
struct TYPE_2__ {int max_nr_of_cqes; int cq_token; int nr_pages; int eq_handle; } ;
struct ehea_cq {int fw_handle; int hw_queue; TYPE_1__ attr; int epas; struct ehea_adapter* adapter; } ;
struct ehea_adapter {int handle; } ;


 int EHEA_CQ_REGISTER_ORIG ;
 int EHEA_PAGESIZE ;
 int FORCE_FREE ;
 int GFP_KERNEL ;
 int H_PAGE_REGISTERED ;
 int H_SUCCESS ;
 int __pa (void*) ;
 int ehea_h_alloc_resource_cq (int ,TYPE_1__*,int *,int *) ;
 int ehea_h_free_resource (int ,int ,int ) ;
 int ehea_h_register_rpage (int ,int ,int ,int ,int ,int) ;
 int ehea_reset_cq_ep (struct ehea_cq*) ;
 int ehea_reset_cq_n1 (struct ehea_cq*) ;
 int hw_qeit_reset (int *) ;
 void* hw_qpageit_get_inc (int *) ;
 int hw_queue_ctor (int *,int,int ,int) ;
 int hw_queue_dtor (int *) ;
 int kfree (struct ehea_cq*) ;
 struct ehea_cq* kzalloc (int,int ) ;
 int pr_err (char*,...) ;

struct ehea_cq *ehea_create_cq(struct ehea_adapter *adapter,
          int nr_of_cqe, u64 eq_handle, u32 cq_token)
{
 struct ehea_cq *cq;
 u64 hret, rpage;
 u32 counter;
 int ret;
 void *vpage;

 cq = kzalloc(sizeof(*cq), GFP_KERNEL);
 if (!cq)
  goto out_nomem;

 cq->attr.max_nr_of_cqes = nr_of_cqe;
 cq->attr.cq_token = cq_token;
 cq->attr.eq_handle = eq_handle;

 cq->adapter = adapter;

 hret = ehea_h_alloc_resource_cq(adapter->handle, &cq->attr,
     &cq->fw_handle, &cq->epas);
 if (hret != H_SUCCESS) {
  pr_err("alloc_resource_cq failed\n");
  goto out_freemem;
 }

 ret = hw_queue_ctor(&cq->hw_queue, cq->attr.nr_pages,
       EHEA_PAGESIZE, sizeof(struct ehea_cqe));
 if (ret)
  goto out_freeres;

 for (counter = 0; counter < cq->attr.nr_pages; counter++) {
  vpage = hw_qpageit_get_inc(&cq->hw_queue);
  if (!vpage) {
   pr_err("hw_qpageit_get_inc failed\n");
   goto out_kill_hwq;
  }

  rpage = __pa(vpage);
  hret = ehea_h_register_rpage(adapter->handle,
          0, EHEA_CQ_REGISTER_ORIG,
          cq->fw_handle, rpage, 1);
  if (hret < H_SUCCESS) {
   pr_err("register_rpage_cq failed ehea_cq=%p hret=%llx counter=%i act_pages=%i\n",
          cq, hret, counter, cq->attr.nr_pages);
   goto out_kill_hwq;
  }

  if (counter == (cq->attr.nr_pages - 1)) {
   vpage = hw_qpageit_get_inc(&cq->hw_queue);

   if ((hret != H_SUCCESS) || (vpage)) {
    pr_err("registration of pages not complete hret=%llx\n",
           hret);
    goto out_kill_hwq;
   }
  } else {
   if (hret != H_PAGE_REGISTERED) {
    pr_err("CQ: registration of page failed hret=%llx\n",
           hret);
    goto out_kill_hwq;
   }
  }
 }

 hw_qeit_reset(&cq->hw_queue);
 ehea_reset_cq_ep(cq);
 ehea_reset_cq_n1(cq);

 return cq;

out_kill_hwq:
 hw_queue_dtor(&cq->hw_queue);

out_freeres:
 ehea_h_free_resource(adapter->handle, cq->fw_handle, FORCE_FREE);

out_freemem:
 kfree(cq);

out_nomem:
 return ((void*)0);
}
