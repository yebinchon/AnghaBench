
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfpf_init_tlv {int flags; scalar_t__ sb_addr; int stats_stride; int stats_addr; } ;
struct bnx2x_virtf {int cfg_flags; int index; int stats_stride; int fw_stat_map; } ;
struct bnx2x_vf_mbx {TYPE_2__* msg; } ;
struct bnx2x {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {struct vfpf_init_tlv init; } ;
struct TYPE_4__ {TYPE_1__ req; } ;


 int VFPF_INIT_FLG_STATS_COALESCE ;
 int VF_CFG_EXT_BULLETIN ;
 int VF_CFG_STATS_COALESCE ;
 int bnx2x_iov_link_update_vf (struct bnx2x*,int ) ;
 int bnx2x_vf_init (struct bnx2x*,struct bnx2x_virtf*,int *) ;
 int bnx2x_vf_mbx_resp (struct bnx2x*,struct bnx2x_virtf*,int) ;

__attribute__((used)) static void bnx2x_vf_mbx_init_vf(struct bnx2x *bp, struct bnx2x_virtf *vf,
         struct bnx2x_vf_mbx *mbx)
{
 struct vfpf_init_tlv *init = &mbx->msg->req.init;
 int rc;


 vf->fw_stat_map = init->stats_addr;
 vf->stats_stride = init->stats_stride;
 rc = bnx2x_vf_init(bp, vf, (dma_addr_t *)init->sb_addr);


 if (init->flags & VFPF_INIT_FLG_STATS_COALESCE)
  vf->cfg_flags |= VF_CFG_STATS_COALESCE;


 if (vf->cfg_flags & VF_CFG_EXT_BULLETIN)
  bnx2x_iov_link_update_vf(bp, vf->index);


 bnx2x_vf_mbx_resp(bp, vf, rc);
}
