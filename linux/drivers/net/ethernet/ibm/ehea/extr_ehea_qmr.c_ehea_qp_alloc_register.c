
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct hw_queue {int dummy; } ;
struct ehea_qp {int fw_handle; } ;
struct ehea_adapter {int handle; } ;


 int EHEA_PAGESIZE ;
 int EIO ;
 scalar_t__ H_SUCCESS ;
 scalar_t__ __pa (void*) ;
 scalar_t__ ehea_h_register_rpage (int ,int ,int,int ,scalar_t__,int) ;
 int hw_qeit_reset (struct hw_queue*) ;
 void* hw_qpageit_get_inc (struct hw_queue*) ;
 int hw_queue_ctor (struct hw_queue*,int,int ,int) ;
 int hw_queue_dtor (struct hw_queue*) ;
 int pr_err (char*) ;

__attribute__((used)) static int ehea_qp_alloc_register(struct ehea_qp *qp, struct hw_queue *hw_queue,
      int nr_pages, int wqe_size, int act_nr_sges,
      struct ehea_adapter *adapter, int h_call_q_selector)
{
 u64 hret, rpage;
 int ret, cnt;
 void *vpage;

 ret = hw_queue_ctor(hw_queue, nr_pages, EHEA_PAGESIZE, wqe_size);
 if (ret)
  return ret;

 for (cnt = 0; cnt < nr_pages; cnt++) {
  vpage = hw_qpageit_get_inc(hw_queue);
  if (!vpage) {
   pr_err("hw_qpageit_get_inc failed\n");
   goto out_kill_hwq;
  }
  rpage = __pa(vpage);
  hret = ehea_h_register_rpage(adapter->handle,
          0, h_call_q_selector,
          qp->fw_handle, rpage, 1);
  if (hret < H_SUCCESS) {
   pr_err("register_rpage_qp failed\n");
   goto out_kill_hwq;
  }
 }
 hw_qeit_reset(hw_queue);
 return 0;

out_kill_hwq:
 hw_queue_dtor(hw_queue);
 return -EIO;
}
