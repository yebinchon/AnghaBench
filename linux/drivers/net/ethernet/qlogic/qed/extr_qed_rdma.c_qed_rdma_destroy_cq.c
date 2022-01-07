
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rdma_destroy_cq_ramrod_data {int output_params_addr; } ;
struct rdma_destroy_cq_output_params {int cnq_num; } ;
struct TYPE_7__ {struct rdma_destroy_cq_ramrod_data rdma_destroy_cq; } ;
struct qed_spq_entry {TYPE_2__ ramrod; } ;
struct qed_sp_init_data {int cid; int comp_mode; int opaque_fid; } ;
struct qed_rdma_destroy_cq_out_params {int num_cq_notif; } ;
struct qed_rdma_destroy_cq_in_params {int icid; } ;
struct TYPE_6__ {int opaque_fid; } ;
struct qed_hwfn {TYPE_5__* cdev; TYPE_3__* p_rdma_info; TYPE_1__ hw_info; } ;
typedef int init_data ;
typedef enum protocol_type { ____Placeholder_protocol_type } protocol_type ;
typedef int dma_addr_t ;
struct TYPE_10__ {TYPE_4__* pdev; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_8__ {int proto; int lock; int cq_map; } ;


 int DMA_REGPAIR_LE (int ,int ) ;
 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int QED_MSG_RDMA ;
 int QED_SPQ_MODE_EBLOCK ;
 int RDMA_RAMROD_DESTROY_CQ ;
 scalar_t__ dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,struct rdma_destroy_cq_output_params*,int ) ;
 int le16_to_cpu (int ) ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_bmap_release_id (struct qed_hwfn*,int *,int) ;
 int qed_cxt_get_proto_cid_start (struct qed_hwfn*,int) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int,struct qed_sp_init_data*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
qed_rdma_destroy_cq(void *rdma_cxt,
      struct qed_rdma_destroy_cq_in_params *in_params,
      struct qed_rdma_destroy_cq_out_params *out_params)
{
 struct qed_hwfn *p_hwfn = (struct qed_hwfn *)rdma_cxt;
 struct rdma_destroy_cq_output_params *p_ramrod_res;
 struct rdma_destroy_cq_ramrod_data *p_ramrod;
 struct qed_sp_init_data init_data;
 struct qed_spq_entry *p_ent;
 dma_addr_t ramrod_res_phys;
 enum protocol_type proto;
 int rc = -ENOMEM;

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "icid = %08x\n", in_params->icid);

 p_ramrod_res =
     (struct rdma_destroy_cq_output_params *)
     dma_alloc_coherent(&p_hwfn->cdev->pdev->dev,
          sizeof(struct rdma_destroy_cq_output_params),
          &ramrod_res_phys, GFP_KERNEL);
 if (!p_ramrod_res) {
  DP_NOTICE(p_hwfn,
     "qed destroy cq failed: cannot allocate memory (ramrod)\n");
  return rc;
 }


 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = in_params->icid;
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = QED_SPQ_MODE_EBLOCK;
 proto = p_hwfn->p_rdma_info->proto;

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     RDMA_RAMROD_DESTROY_CQ,
     proto, &init_data);
 if (rc)
  goto err;

 p_ramrod = &p_ent->ramrod.rdma_destroy_cq;
 DMA_REGPAIR_LE(p_ramrod->output_params_addr, ramrod_res_phys);

 rc = qed_spq_post(p_hwfn, p_ent, ((void*)0));
 if (rc)
  goto err;

 out_params->num_cq_notif = le16_to_cpu(p_ramrod_res->cnq_num);

 dma_free_coherent(&p_hwfn->cdev->pdev->dev,
     sizeof(struct rdma_destroy_cq_output_params),
     p_ramrod_res, ramrod_res_phys);


 spin_lock_bh(&p_hwfn->p_rdma_info->lock);

 qed_bmap_release_id(p_hwfn,
       &p_hwfn->p_rdma_info->cq_map,
       (in_params->icid -
        qed_cxt_get_proto_cid_start(p_hwfn, proto)));

 spin_unlock_bh(&p_hwfn->p_rdma_info->lock);

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "Destroyed CQ, rc = %d\n", rc);
 return rc;

err: dma_free_coherent(&p_hwfn->cdev->pdev->dev,
     sizeof(struct rdma_destroy_cq_output_params),
     p_ramrod_res, ramrod_res_phys);

 return rc;
}
