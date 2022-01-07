
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pch_gbe_hw {TYPE_1__* reg; } ;
struct pch_gbe_adapter {int netdev; } ;
struct TYPE_2__ {int WOL_ST; int WOL_CTRL; int INT_EN; int TCPIP_ACC; int WOL_ADDR_MASK; int ADDR_MASK; } ;


 int PCH_GBE_INT_ENABLE_MASK ;
 int PCH_GBE_WLA_BUSY ;
 int PCH_GBE_WLC_WOL_MODE ;
 int ioread32 (int *) ;
 int iowrite32 (int,int *) ;
 int netdev_dbg (int ,char*,int,int) ;
 struct pch_gbe_adapter* pch_gbe_hw_to_adapter (struct pch_gbe_hw*) ;
 int pch_gbe_wait_clr_bit (int *,int ) ;

__attribute__((used)) static void pch_gbe_mac_set_wol_event(struct pch_gbe_hw *hw, u32 wu_evt)
{
 struct pch_gbe_adapter *adapter = pch_gbe_hw_to_adapter(hw);
 u32 addr_mask;

 netdev_dbg(adapter->netdev, "wu_evt : 0x%08x  ADDR_MASK reg : 0x%08x\n",
     wu_evt, ioread32(&hw->reg->ADDR_MASK));

 if (wu_evt) {

  addr_mask = ioread32(&hw->reg->ADDR_MASK);
  iowrite32(addr_mask, &hw->reg->WOL_ADDR_MASK);

  pch_gbe_wait_clr_bit(&hw->reg->WOL_ADDR_MASK, PCH_GBE_WLA_BUSY);
  iowrite32(0, &hw->reg->WOL_ST);
  iowrite32((wu_evt | PCH_GBE_WLC_WOL_MODE), &hw->reg->WOL_CTRL);
  iowrite32(0x02, &hw->reg->TCPIP_ACC);
  iowrite32(PCH_GBE_INT_ENABLE_MASK, &hw->reg->INT_EN);
 } else {
  iowrite32(0, &hw->reg->WOL_CTRL);
  iowrite32(0, &hw->reg->WOL_ST);
 }
 return;
}
