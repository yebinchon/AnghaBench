
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int EINVAL ;
 int MAC_TCR ;



 int SS ;
 unsigned int XGMAC_IOREAD_BITS (struct xgbe_prv_data*,int ,int ) ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,unsigned int) ;

__attribute__((used)) static int xgbe_set_speed(struct xgbe_prv_data *pdata, int speed)
{
 unsigned int ss;

 switch (speed) {
 case 130:
  ss = 0x03;
  break;
 case 128:
  ss = 0x02;
  break;
 case 129:
  ss = 0x00;
  break;
 default:
  return -EINVAL;
 }

 if (XGMAC_IOREAD_BITS(pdata, MAC_TCR, SS) != ss)
  XGMAC_IOWRITE_BITS(pdata, MAC_TCR, SS, ss);

 return 0;
}
