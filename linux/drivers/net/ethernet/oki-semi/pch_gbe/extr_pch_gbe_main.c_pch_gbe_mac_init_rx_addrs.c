
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
typedef size_t u16 ;
struct TYPE_6__ {int addr; } ;
struct pch_gbe_hw {TYPE_2__* reg; TYPE_3__ mac; } ;
struct TYPE_5__ {int ADDR_MASK; TYPE_1__* mac_adr; } ;
struct TYPE_4__ {int low; int high; } ;


 int PCH_GBE_BUSY ;
 int iowrite32 (int,int *) ;
 int pch_gbe_mac_mar_set (struct pch_gbe_hw*,int ,int ) ;
 int pch_gbe_wait_clr_bit (int *,int ) ;

__attribute__((used)) static void pch_gbe_mac_init_rx_addrs(struct pch_gbe_hw *hw, u16 mar_count)
{
 u32 i;


 pch_gbe_mac_mar_set(hw, hw->mac.addr, 0);


 for (i = 1; i < mar_count; i++) {
  iowrite32(0, &hw->reg->mac_adr[i].high);
  iowrite32(0, &hw->reg->mac_adr[i].low);
 }
 iowrite32(0xFFFE, &hw->reg->ADDR_MASK);

 pch_gbe_wait_clr_bit(&hw->reg->ADDR_MASK, PCH_GBE_BUSY);
}
