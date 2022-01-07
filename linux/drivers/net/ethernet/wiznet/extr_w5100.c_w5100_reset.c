
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w5100_priv {int ndev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* reset ) (int ) ;} ;


 int MR_PB ;
 int MR_RST ;
 int W5100_MR ;
 int mdelay (int) ;
 int stub1 (int ) ;
 int w5100_write (struct w5100_priv*,int ,int ) ;

__attribute__((used)) static int w5100_reset(struct w5100_priv *priv)
{
 if (priv->ops->reset)
  return priv->ops->reset(priv->ndev);

 w5100_write(priv, W5100_MR, MR_RST);
 mdelay(5);
 w5100_write(priv, W5100_MR, MR_PB);

 return 0;
}
