
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct pch_gbe_hw {TYPE_2__* reg; } ;
struct pch_gbe_adapter {int netdev; } ;
struct TYPE_4__ {int ADDR_MASK; TYPE_1__* mac_adr; } ;
struct TYPE_3__ {int low; int high; } ;


 int PCH_GBE_BUSY ;
 int ioread32 (int *) ;
 int iowrite32 (int,int *) ;
 int netdev_dbg (int ,char*,int) ;
 struct pch_gbe_adapter* pch_gbe_hw_to_adapter (struct pch_gbe_hw*) ;
 int pch_gbe_wait_clr_bit (int *,int ) ;

__attribute__((used)) static void pch_gbe_mac_mar_set(struct pch_gbe_hw *hw, u8 * addr, u32 index)
{
 struct pch_gbe_adapter *adapter = pch_gbe_hw_to_adapter(hw);
 u32 mar_low, mar_high, adrmask;

 netdev_dbg(adapter->netdev, "index : 0x%x\n", index);





 mar_high = ((u32) addr[0] | ((u32) addr[1] << 8) |
     ((u32) addr[2] << 16) | ((u32) addr[3] << 24));
 mar_low = ((u32) addr[4] | ((u32) addr[5] << 8));

 adrmask = ioread32(&hw->reg->ADDR_MASK);
 iowrite32((adrmask | (0x0001 << index)), &hw->reg->ADDR_MASK);

 pch_gbe_wait_clr_bit(&hw->reg->ADDR_MASK, PCH_GBE_BUSY);

 iowrite32(mar_high, &hw->reg->mac_adr[index].high);
 iowrite32(mar_low, &hw->reg->mac_adr[index].low);

 iowrite32((adrmask & ~(0x0001 << index)), &hw->reg->ADDR_MASK);

 pch_gbe_wait_clr_bit(&hw->reg->ADDR_MASK, PCH_GBE_BUSY);
}
