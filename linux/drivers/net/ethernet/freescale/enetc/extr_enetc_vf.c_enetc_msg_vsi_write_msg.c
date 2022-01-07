
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct enetc_msg_swbd {int dma; int size; } ;
struct enetc_hw {int dummy; } ;


 int ENETC_VSIMSGSNDAR0 ;
 int ENETC_VSIMSGSNDAR1 ;
 int enetc_vsi_set_msize (int ) ;
 int enetc_wr (struct enetc_hw*,int ,int) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void enetc_msg_vsi_write_msg(struct enetc_hw *hw,
        struct enetc_msg_swbd *msg)
{
 u32 val;

 val = enetc_vsi_set_msize(msg->size) | lower_32_bits(msg->dma);
 enetc_wr(hw, ENETC_VSIMSGSNDAR1, upper_32_bits(msg->dma));
 enetc_wr(hw, ENETC_VSIMSGSNDAR0, val);
}
