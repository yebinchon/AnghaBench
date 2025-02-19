
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct roce_destroy_qp_resp_ramrod_data {int output_params_addr; } ;
struct roce_destroy_qp_resp_output_params {int cq_prod; } ;
struct TYPE_8__ {struct roce_destroy_qp_resp_ramrod_data roce_destroy_qp_resp; } ;
struct qed_spq_entry {TYPE_3__ ramrod; } ;
struct qed_sp_init_data {int cid; int comp_mode; int opaque_fid; } ;
struct qed_rdma_qp {int icid; int cq_prod; int resp_offloaded; int irq_num_pages; int irq_phys_addr; struct roce_destroy_qp_resp_output_params* irq; } ;
struct TYPE_7__ {int opaque_fid; } ;
struct qed_hwfn {TYPE_5__* cdev; TYPE_2__ hw_info; TYPE_1__* p_rdma_info; } ;
typedef int init_data ;
typedef int dma_addr_t ;
struct TYPE_10__ {TYPE_4__* pdev; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_6__ {int proto; } ;


 int DMA_REGPAIR_LE (int ,int ) ;
 int DP_NOTICE (struct qed_hwfn*,char*,int) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PROTOCOLID_ROCE ;
 int QED_MSG_RDMA ;
 int QED_SPQ_MODE_EBLOCK ;
 int RDMA_RING_PAGE_SIZE ;
 int ROCE_RAMROD_DESTROY_QP ;
 scalar_t__ dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,struct roce_destroy_qp_resp_output_params*,int ) ;
 int le32_to_cpu (int ) ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_cxt_get_proto_cid_start (struct qed_hwfn*,int ) ;
 int qed_roce_free_cid_pair (struct qed_hwfn*,int ) ;
 int qed_sp_destroy_request (struct qed_hwfn*,struct qed_spq_entry*) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;

__attribute__((used)) static int qed_roce_sp_destroy_qp_responder(struct qed_hwfn *p_hwfn,
         struct qed_rdma_qp *qp,
         u32 *cq_prod)
{
 struct roce_destroy_qp_resp_output_params *p_ramrod_res;
 struct roce_destroy_qp_resp_ramrod_data *p_ramrod;
 struct qed_sp_init_data init_data;
 struct qed_spq_entry *p_ent;
 dma_addr_t ramrod_res_phys;
 int rc;

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "icid = %08x\n", qp->icid);
 *cq_prod = qp->cq_prod;

 if (!qp->resp_offloaded) {



  u32 cid;

  cid = qp->icid -
        qed_cxt_get_proto_cid_start(p_hwfn,
        p_hwfn->p_rdma_info->proto);
  qed_roce_free_cid_pair(p_hwfn, (u16)cid);

  return 0;
 }


 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = qp->icid;
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = QED_SPQ_MODE_EBLOCK;

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     ROCE_RAMROD_DESTROY_QP,
     PROTOCOLID_ROCE, &init_data);
 if (rc)
  return rc;

 p_ramrod = &p_ent->ramrod.roce_destroy_qp_resp;

 p_ramrod_res = (struct roce_destroy_qp_resp_output_params *)
     dma_alloc_coherent(&p_hwfn->cdev->pdev->dev, sizeof(*p_ramrod_res),
          &ramrod_res_phys, GFP_KERNEL);

 if (!p_ramrod_res) {
  rc = -ENOMEM;
  DP_NOTICE(p_hwfn,
     "qed destroy responder failed: cannot allocate memory (ramrod). rc = %d\n",
     rc);
  qed_sp_destroy_request(p_hwfn, p_ent);
  return rc;
 }

 DMA_REGPAIR_LE(p_ramrod->output_params_addr, ramrod_res_phys);

 rc = qed_spq_post(p_hwfn, p_ent, ((void*)0));
 if (rc)
  goto err;

 *cq_prod = le32_to_cpu(p_ramrod_res->cq_prod);
 qp->cq_prod = *cq_prod;


 dma_free_coherent(&p_hwfn->cdev->pdev->dev,
     qp->irq_num_pages * RDMA_RING_PAGE_SIZE,
     qp->irq, qp->irq_phys_addr);

 qp->resp_offloaded = 0;

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "Destroy responder, rc = %d\n", rc);

err:
 dma_free_coherent(&p_hwfn->cdev->pdev->dev,
     sizeof(struct roce_destroy_qp_resp_output_params),
     p_ramrod_res, ramrod_res_phys);

 return rc;
}
