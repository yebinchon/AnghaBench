
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct w5100_priv {TYPE_1__* ops; } ;
struct TYPE_2__ {int chip_id; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ RTR_DEFAULT ;

 int W5100_RTR ;


 int W5500_RTR ;
 int w5100_disable_intr (struct w5100_priv*) ;
 int w5100_memory_configure (struct w5100_priv*) ;
 scalar_t__ w5100_read16 (struct w5100_priv*,int ) ;
 int w5100_reset (struct w5100_priv*) ;
 int w5100_write_macaddr (struct w5100_priv*) ;
 int w5200_memory_configure (struct w5100_priv*) ;
 int w5500_memory_configure (struct w5100_priv*) ;

__attribute__((used)) static int w5100_hw_reset(struct w5100_priv *priv)
{
 u32 rtr;

 w5100_reset(priv);

 w5100_disable_intr(priv);
 w5100_write_macaddr(priv);

 switch (priv->ops->chip_id) {
 case 130:
  w5100_memory_configure(priv);
  rtr = W5100_RTR;
  break;
 case 129:
  w5200_memory_configure(priv);
  rtr = W5100_RTR;
  break;
 case 128:
  w5500_memory_configure(priv);
  rtr = W5500_RTR;
  break;
 default:
  return -EINVAL;
 }

 if (w5100_read16(priv, rtr) != RTR_DEFAULT)
  return -ENODEV;

 return 0;
}
