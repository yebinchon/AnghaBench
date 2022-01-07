
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int CHELSIO_CHIP_CODE (int const,int ) ;



 int EINVAL ;
 int PL_REV_A ;
 int REV_G (int ) ;
 int t4_read_reg (struct adapter*,int ) ;

__attribute__((used)) static int t4_get_chip_type(struct adapter *adap, int ver)
{
 u32 pl_rev = REV_G(t4_read_reg(adap, PL_REV_A));

 switch (ver) {
 case 130:
  return CHELSIO_CHIP_CODE(130, pl_rev);
 case 129:
  return CHELSIO_CHIP_CODE(129, pl_rev);
 case 128:
  return CHELSIO_CHIP_CODE(128, pl_rev);
 default:
  break;
 }
 return -EINVAL;
}
