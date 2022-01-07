
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pch_gbe_hw {TYPE_1__* reg; } ;
struct TYPE_2__ {int MAC_ADDR_LOAD; } ;


 int iowrite32 (int,int *) ;

__attribute__((used)) static inline void pch_gbe_mac_load_mac_addr(struct pch_gbe_hw *hw)
{
 iowrite32(0x01, &hw->reg->MAC_ADDR_LOAD);
}
