
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct w5100_priv {int ndev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read ) (int ,int ) ;} ;


 int stub1 (int ,int ) ;

__attribute__((used)) static int w5100_read(struct w5100_priv *priv, u32 addr)
{
 return priv->ops->read(priv->ndev, addr);
}
