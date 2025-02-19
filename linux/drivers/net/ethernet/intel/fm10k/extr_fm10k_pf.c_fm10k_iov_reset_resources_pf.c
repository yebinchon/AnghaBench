
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_7__ {int (* disconnect ) (struct fm10k_hw*,TYPE_6__*) ;} ;
struct TYPE_12__ {TYPE_1__ ops; scalar_t__ timeout; } ;
struct fm10k_vf_info {int vf_idx; int pf_vid; int sw_vid; scalar_t__* mac; int vsi; TYPE_6__ mbx; } ;
struct TYPE_8__ {int (* update_int_moderator ) (struct fm10k_hw*) ;} ;
struct TYPE_11__ {int itr_scale; TYPE_2__ ops; } ;
struct TYPE_9__ {int (* assign_int_moderator ) (struct fm10k_hw*,int) ;} ;
struct TYPE_10__ {int num_vfs; TYPE_3__ ops; } ;
struct fm10k_hw {TYPE_5__ mac; TYPE_4__ iov; } ;
typedef int s32 ;


 int BIT (int) ;
 int FM10K_ERR_PARAM ;
 int FM10K_ITR2 (int) ;
 int FM10K_MBMEM_VF (int,int) ;
 int FM10K_MRQC (int ) ;
 int FM10K_PFVFLREC (int) ;
 int FM10K_RETA (int ,int) ;
 int FM10K_RETA_SIZE ;
 int FM10K_RQMAP (int) ;
 int FM10K_RSSRK (int ,int) ;
 int FM10K_RSSRK_SIZE ;
 int FM10K_RXDCTL (int) ;
 int FM10K_RXDCTL_DROP_ON_EMPTY ;
 int FM10K_RXDCTL_WRITE_BACK_MIN_DELAY ;
 int FM10K_RXQCTL (int) ;
 int FM10K_RXQCTL_VF ;
 int FM10K_RXQCTL_VF_SHIFT ;
 int FM10K_TC_CREDIT (int) ;
 int FM10K_TC_CREDIT_CREDIT_MASK ;
 int FM10K_TC_MAXCREDIT (int) ;
 int FM10K_TC_RATE (int) ;
 int FM10K_TDBAH (int) ;
 int FM10K_TDBAL (int) ;
 int FM10K_TDLEN (int) ;
 int FM10K_TDLEN_ITR_SCALE_SHIFT ;
 int FM10K_TQMAP (int) ;
 int FM10K_TXDCTL (int) ;
 int FM10K_TXQCTL (int) ;
 int FM10K_TXQCTL_TC_SHIFT ;
 int FM10K_TXQCTL_VF ;
 int FM10K_TXQCTL_VID_SHIFT ;
 int FM10K_VFMBMEM_LEN ;
 int FM10K_VLAN_TABLE (int ,int) ;
 int FM10K_VLAN_TABLE_SIZE ;
 int fm10k_queues_per_pool (struct fm10k_hw*) ;
 int fm10k_vectors_per_pool (struct fm10k_hw*) ;
 int fm10k_vf_queue_index (struct fm10k_hw*,int) ;
 int fm10k_vf_vector_index (struct fm10k_hw*,int) ;
 int fm10k_write_reg (struct fm10k_hw*,int ,int) ;
 scalar_t__ is_valid_ether_addr (scalar_t__*) ;
 int stub1 (struct fm10k_hw*,TYPE_6__*) ;
 int stub2 (struct fm10k_hw*) ;
 int stub3 (struct fm10k_hw*,int) ;

__attribute__((used)) static s32 fm10k_iov_reset_resources_pf(struct fm10k_hw *hw,
     struct fm10k_vf_info *vf_info)
{
 u16 qmap_stride, queues_per_pool, vf_q_idx, qmap_idx;
 u32 tdbal = 0, tdbah = 0, txqctl, rxqctl;
 u16 vf_v_idx, vf_v_limit, vf_vid;
 u8 vf_idx = vf_info->vf_idx;
 int i;


 if (vf_idx >= hw->iov.num_vfs)
  return FM10K_ERR_PARAM;


 fm10k_write_reg(hw, FM10K_PFVFLREC(vf_idx / 32), BIT(vf_idx % 32));


 vf_info->mbx.timeout = 0;
 if (vf_info->mbx.ops.disconnect)
  vf_info->mbx.ops.disconnect(hw, &vf_info->mbx);


 vf_v_idx = fm10k_vf_vector_index(hw, vf_idx);
 vf_v_limit = vf_v_idx + fm10k_vectors_per_pool(hw);


 qmap_stride = (hw->iov.num_vfs > 8) ? 32 : 256;
 queues_per_pool = fm10k_queues_per_pool(hw);
 qmap_idx = qmap_stride * vf_idx;


 for (i = qmap_idx; i < (qmap_idx + qmap_stride); i++) {
  fm10k_write_reg(hw, FM10K_TQMAP(i), 0);
  fm10k_write_reg(hw, FM10K_RQMAP(i), 0);
 }


 vf_q_idx = fm10k_vf_queue_index(hw, vf_idx);


 if (vf_info->pf_vid)
  vf_vid = vf_info->pf_vid;
 else
  vf_vid = vf_info->sw_vid;


 txqctl = ((u32)vf_vid << FM10K_TXQCTL_VID_SHIFT) |
   (vf_idx << FM10K_TXQCTL_TC_SHIFT) |
   FM10K_TXQCTL_VF | vf_idx;
 rxqctl = (vf_idx << FM10K_RXQCTL_VF_SHIFT) | FM10K_RXQCTL_VF;


 for (i = vf_q_idx; i < (queues_per_pool + vf_q_idx); i++) {
  fm10k_write_reg(hw, FM10K_TXDCTL(i), 0);
  fm10k_write_reg(hw, FM10K_TXQCTL(i), txqctl);
  fm10k_write_reg(hw, FM10K_RXDCTL(i),
    FM10K_RXDCTL_WRITE_BACK_MIN_DELAY |
    FM10K_RXDCTL_DROP_ON_EMPTY);
  fm10k_write_reg(hw, FM10K_RXQCTL(i), rxqctl);
 }


 fm10k_write_reg(hw, FM10K_TC_MAXCREDIT(vf_idx), 0);
 fm10k_write_reg(hw, FM10K_TC_RATE(vf_idx), 0);
 fm10k_write_reg(hw, FM10K_TC_CREDIT(vf_idx),
   FM10K_TC_CREDIT_CREDIT_MASK);


 if (!vf_idx)
  hw->mac.ops.update_int_moderator(hw);
 else
  hw->iov.ops.assign_int_moderator(hw, vf_idx - 1);


 if (vf_idx == (hw->iov.num_vfs - 1))
  fm10k_write_reg(hw, FM10K_ITR2(0), vf_v_idx);
 else
  fm10k_write_reg(hw, FM10K_ITR2(vf_v_limit), vf_v_idx);


 for (vf_v_idx++; vf_v_idx < vf_v_limit; vf_v_idx++)
  fm10k_write_reg(hw, FM10K_ITR2(vf_v_idx), vf_v_idx - 1);


 for (i = FM10K_VFMBMEM_LEN; i--;)
  fm10k_write_reg(hw, FM10K_MBMEM_VF(vf_idx, i), 0);
 for (i = FM10K_VLAN_TABLE_SIZE; i--;)
  fm10k_write_reg(hw, FM10K_VLAN_TABLE(vf_info->vsi, i), 0);
 for (i = FM10K_RETA_SIZE; i--;)
  fm10k_write_reg(hw, FM10K_RETA(vf_info->vsi, i), 0);
 for (i = FM10K_RSSRK_SIZE; i--;)
  fm10k_write_reg(hw, FM10K_RSSRK(vf_info->vsi, i), 0);
 fm10k_write_reg(hw, FM10K_MRQC(vf_info->vsi), 0);


 if (is_valid_ether_addr(vf_info->mac)) {
  tdbal = (((u32)vf_info->mac[3]) << 24) |
   (((u32)vf_info->mac[4]) << 16) |
   (((u32)vf_info->mac[5]) << 8);
  tdbah = (((u32)0xFF) << 24) |
   (((u32)vf_info->mac[0]) << 16) |
   (((u32)vf_info->mac[1]) << 8) |
   ((u32)vf_info->mac[2]);
 }


 for (i = queues_per_pool; i--;) {
  fm10k_write_reg(hw, FM10K_TDBAL(vf_q_idx + i), tdbal);
  fm10k_write_reg(hw, FM10K_TDBAH(vf_q_idx + i), tdbah);



  fm10k_write_reg(hw, FM10K_TDLEN(vf_q_idx + i),
    hw->mac.itr_scale <<
    FM10K_TDLEN_ITR_SCALE_SHIFT);
  fm10k_write_reg(hw, FM10K_TQMAP(qmap_idx + i), vf_q_idx + i);
  fm10k_write_reg(hw, FM10K_RQMAP(qmap_idx + i), vf_q_idx + i);
 }


 for (i = queues_per_pool; i < qmap_stride; i++) {
  fm10k_write_reg(hw, FM10K_TQMAP(qmap_idx + i), vf_q_idx);
  fm10k_write_reg(hw, FM10K_RQMAP(qmap_idx + i), vf_q_idx);
 }

 return 0;
}
