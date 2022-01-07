
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct w5100_priv {int ndev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write16 ) (int ,int ,int ) ;} ;


 int stub1 (int ,int ,int ) ;

__attribute__((used)) static int w5100_write16(struct w5100_priv *priv, u32 addr, u16 data)
{
 return priv->ops->write16(priv->ndev, addr, data);
}
