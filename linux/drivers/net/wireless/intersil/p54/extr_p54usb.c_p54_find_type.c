
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p54u_priv {scalar_t__ hw_type; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int EOPNOTSUPP ;
 int __NUM_P54U_HWTYPES ;
 TYPE_1__* p54u_fwlist ;

__attribute__((used)) static int p54_find_type(struct p54u_priv *priv)
{
 int i;

 for (i = 0; i < __NUM_P54U_HWTYPES; i++)
  if (p54u_fwlist[i].type == priv->hw_type)
   break;
 if (i == __NUM_P54U_HWTYPES)
  return -EOPNOTSUPP;

 return i;
}
