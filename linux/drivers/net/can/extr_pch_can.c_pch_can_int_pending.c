
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pch_can_priv {TYPE_1__* regs; } ;
struct TYPE_2__ {int intr; } ;


 int ioread32 (int *) ;

__attribute__((used)) static u32 pch_can_int_pending(struct pch_can_priv *priv)
{
 return ioread32(&priv->regs->intr) & 0xffff;
}
