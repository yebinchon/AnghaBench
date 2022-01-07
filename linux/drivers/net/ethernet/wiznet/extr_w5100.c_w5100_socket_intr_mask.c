
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct w5100_priv {TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ chip_id; } ;


 int W5100_IMR ;
 scalar_t__ W5500 ;
 int W5500_SIMR ;
 int w5100_write (struct w5100_priv*,int ,int ) ;

__attribute__((used)) static void w5100_socket_intr_mask(struct w5100_priv *priv, u8 mask)
{
 u32 imr;

 if (priv->ops->chip_id == W5500)
  imr = W5500_SIMR;
 else
  imr = W5100_IMR;

 w5100_write(priv, imr, mask);
}
