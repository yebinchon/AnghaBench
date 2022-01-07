
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ice_hw {int dummy; } ;
struct TYPE_2__ {int pa; } ;
struct ice_ctl_q_ring {int len_ena_mask; TYPE_1__ desc_buf; int bal; int bah; int len; int tail; int head; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_ERR_AQ_ERROR ;
 int lower_32_bits (int ) ;
 int rd32 (struct ice_hw*,int ) ;
 int upper_32_bits (int ) ;
 int wr32 (struct ice_hw*,int ,int) ;

__attribute__((used)) static enum ice_status
ice_cfg_cq_regs(struct ice_hw *hw, struct ice_ctl_q_ring *ring, u16 num_entries)
{

 wr32(hw, ring->head, 0);
 wr32(hw, ring->tail, 0);


 wr32(hw, ring->len, (num_entries | ring->len_ena_mask));
 wr32(hw, ring->bal, lower_32_bits(ring->desc_buf.pa));
 wr32(hw, ring->bah, upper_32_bits(ring->desc_buf.pa));


 if (rd32(hw, ring->bal) != lower_32_bits(ring->desc_buf.pa))
  return ICE_ERR_AQ_ERROR;

 return 0;
}
