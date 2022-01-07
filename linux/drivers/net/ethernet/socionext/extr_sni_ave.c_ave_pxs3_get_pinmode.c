
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ave_private {void* pinmode_val; void* pinmode_mask; } ;
typedef int phy_interface_t ;


 int EINVAL ;


 void* SG_ETPINMODE_RMII (int) ;

__attribute__((used)) static int ave_pxs3_get_pinmode(struct ave_private *priv,
    phy_interface_t phy_mode, u32 arg)
{
 if (arg > 1)
  return -EINVAL;

 priv->pinmode_mask = SG_ETPINMODE_RMII(arg);

 switch (phy_mode) {
 case 128:
  priv->pinmode_val = SG_ETPINMODE_RMII(arg);
  break;
 case 129:
  priv->pinmode_val = 0;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
