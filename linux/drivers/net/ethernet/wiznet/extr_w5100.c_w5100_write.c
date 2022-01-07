
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct w5100_priv {int ndev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write ) (int ,int ,int ) ;} ;


 int stub1 (int ,int ,int ) ;

__attribute__((used)) static int w5100_write(struct w5100_priv *priv, u32 addr, u8 data)
{
 return priv->ops->write(priv->ndev, addr, data);
}
