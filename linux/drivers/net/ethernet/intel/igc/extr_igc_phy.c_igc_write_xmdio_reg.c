
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct igc_hw {int dummy; } ;
typedef int s32 ;


 int __igc_access_xmdio_reg (struct igc_hw*,int ,int ,int *,int) ;

__attribute__((used)) static s32 igc_write_xmdio_reg(struct igc_hw *hw, u16 addr,
          u8 dev_addr, u16 data)
{
 return __igc_access_xmdio_reg(hw, addr, dev_addr, &data, 0);
}
