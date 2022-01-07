
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pch_can_priv {TYPE_1__* regs; } ;
struct TYPE_2__ {int srst; } ;


 int iowrite32 (int,int *) ;

__attribute__((used)) static void pch_can_reset(struct pch_can_priv *priv)
{

 iowrite32(1, &priv->regs->srst);
 iowrite32(0, &priv->regs->srst);
}
