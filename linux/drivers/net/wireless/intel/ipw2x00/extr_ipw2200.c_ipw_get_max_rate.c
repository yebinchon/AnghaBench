
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ ieee_mode; } ;
struct ipw_priv {int rates_mask; TYPE_2__* ieee; TYPE_1__ assoc_request; } ;
struct TYPE_4__ {scalar_t__ mode; } ;


 scalar_t__ IEEE_B ;
 scalar_t__ IPW_B_MODE ;
 int LIBIPW_CCK_RATES_MASK ;
__attribute__((used)) static u32 ipw_get_max_rate(struct ipw_priv *priv)
{
 u32 i = 0x80000000;
 u32 mask = priv->rates_mask;


 if (priv->assoc_request.ieee_mode == IPW_B_MODE)
  mask &= LIBIPW_CCK_RATES_MASK;




 while (i && !(mask & i))
  i >>= 1;
 switch (i) {
 case 138:
  return 1000000;
 case 137:
  return 2000000;
 case 136:
  return 5500000;
 case 129:
  return 6000000;
 case 128:
  return 9000000;
 case 139:
  return 11000000;
 case 135:
  return 12000000;
 case 134:
  return 18000000;
 case 133:
  return 24000000;
 case 132:
  return 36000000;
 case 131:
  return 48000000;
 case 130:
  return 54000000;
 }

 if (priv->ieee->mode == IEEE_B)
  return 11000000;
 else
  return 54000000;
}
