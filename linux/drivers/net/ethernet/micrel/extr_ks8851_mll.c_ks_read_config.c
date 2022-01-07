
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ks_net {int sharedbus; int extra_byte; int bus_width; } ;


 int CCR_16BIT ;
 int CCR_8BIT ;
 int CCR_SHARED ;
 int ENUM_BUS_16BIT ;
 int ENUM_BUS_32BIT ;
 int ENUM_BUS_8BIT ;
 scalar_t__ KS_CCR ;
 int ks_rdreg8 (struct ks_net*,scalar_t__) ;

__attribute__((used)) static void ks_read_config(struct ks_net *ks)
{
 u16 reg_data = 0;


 reg_data = ks_rdreg8(ks, KS_CCR) & 0x00FF;
 reg_data |= ks_rdreg8(ks, KS_CCR+1) << 8;


 ks->sharedbus = (reg_data & CCR_SHARED) == CCR_SHARED;





 if (reg_data & CCR_8BIT) {
  ks->bus_width = ENUM_BUS_8BIT;
  ks->extra_byte = 1;
 } else if (reg_data & CCR_16BIT) {
  ks->bus_width = ENUM_BUS_16BIT;
  ks->extra_byte = 2;
 } else {
  ks->bus_width = ENUM_BUS_32BIT;
  ks->extra_byte = 4;
 }
}
