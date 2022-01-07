
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct roce_destroy_qp_req_ramrod_data {int output_params_addr; } ;
struct roce_destroy_qp_req_output_params {int dummy; } ;
struct TYPE_6__ {struct roce_destroy_qp_req_ramrod_data roce_destroy_qp_req; } ;
struct qed_spq_entry {TYPE_2__ ramrod; } ;
struct qed_sp_init_data {int cid; int comp_mode; int opaque_fid; } ;
struct qed_rdma_qp {int icid; int req_offloaded; int orq_num_pages; int orq_phys_addr; struct roce_destroy_qp_req_output_params* orq; } ;
struct TYPE_5__ {int opaque_fid; } ;
struct qed_hwfn {TYPE_4__* cdev; TYPE_1__ hw_info; } ;
typedef int init_data ;
typedef int dma_addr_t ;
struct TYPE_8__ {TYPE_3__* pdev; } ;
struct TYPE_7__ {int dev; } ;


 int DMA_REGPAIR_LE (int ,int ) ;
 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PROTOCOLID_ROCE ;
 int QED_MSG_RDMA ;
 int QED_SPQ_MODE_EBLOCK ;
 int RDMA_RING_PAGE_SIZE ;
 int ROCE_RAMROD_DESTROY_QP ;
 scalar_t__ dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,struct roce_destroy_qp_req_output_params*,int ) ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;

__attribute__((used)) static int qed_roce_sp_destroy_qp_requester(struct qed_hwfn *p_hwfn,
         struct qed_rdma_qp *qp)
{
 struct roce_destroy_qp_req_output_params *p_ramrod_res;
 struct roce_destroy_qp_req_ramrod_data *p_ramrod;
 struct qed_sp_init_data init_data;
 struct qed_spq_entry *p_ent;
 dma_addr_t ramrod_res_phys;
 int rc = -ENOMEM;

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "icid = %08x\n", qp->icid);

 if (!qp->req_offloaded)
  return 0;

 p_ramrod_res = (struct roce_destroy_qp_req_output_params *)
         dma_alloc_coherent(&p_hwfn->cdev->pdev->dev,
       sizeof(*p_ramrod_res),
       &ramrod_res_phys, GFP_KERNEL);
 if (!p_ramrod_res) {
  DP_NOTICE(p_hwfn,
     "qed destroy requester failed: cannot allocate memory (ramrod)\n");
  return rc;
 }


 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = qp->icid + 1;
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = QED_SPQ_MODE_EBLOCK;

 rc = qed_sp_init_request(p_hwfn, &p_ent, ROCE_RAMROD_DESTROY_QP,
     PROTOCOLID_ROCE, &init_data);
 if (rc)
  goto err;

 p_ramrod = &p_ent->ramrod.roce_destroy_qp_req;
 DMA_REGPAIR_LE(p_ramrod->output_params_addr, ramrod_res_phys);

 rc = qed_spq_post(p_hwfn, p_ent, ((void*)0));
 if (rc)
  goto err;



 dma_free_coherent(&p_hwfn->cdev->pdev->dev,
     qp->orq_num_pages * RDMA_RING_PAGE_SIZE,
     qp->orq, qp->orq_phys_addr);

 qp->req_offloaded = 0;

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "Destroy requester, rc = %d\n", rc);

err:
 dma_free_coherent(&p_hwfn->cdev->pdev->dev, sizeof(*p_ramrod_res),
     p_ramrod_res, ramrod_res_phys);

 return rc;
}
