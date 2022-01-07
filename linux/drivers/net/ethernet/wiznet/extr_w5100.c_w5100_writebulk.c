
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct w5100_priv {int ndev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* writebulk ) (int ,int ,int const*,int) ;} ;


 int stub1 (int ,int ,int const*,int) ;

__attribute__((used)) static int w5100_writebulk(struct w5100_priv *priv, u32 addr, const u8 *buf,
      int len)
{
 return priv->ops->writebulk(priv->ndev, addr, buf, len);
}
