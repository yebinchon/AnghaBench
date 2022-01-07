
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int ctrlmode; } ;
struct pch_can_priv {TYPE_2__* regs; TYPE_1__ can; } ;
struct TYPE_4__ {int opt; int cont; } ;


 int CAN_CTRLMODE_LISTENONLY ;
 int CAN_CTRLMODE_LOOPBACK ;
 int PCH_CTRL_OPT ;
 int PCH_OPT_LBACK ;
 int PCH_OPT_SILENT ;
 int ioread32 (int *) ;
 int iowrite32 (int ,int *) ;
 int pch_can_bit_set (int *,int ) ;

__attribute__((used)) static void pch_can_set_optmode(struct pch_can_priv *priv)
{
 u32 reg_val = ioread32(&priv->regs->opt);

 if (priv->can.ctrlmode & CAN_CTRLMODE_LISTENONLY)
  reg_val |= PCH_OPT_SILENT;

 if (priv->can.ctrlmode & CAN_CTRLMODE_LOOPBACK)
  reg_val |= PCH_OPT_LBACK;

 pch_can_bit_set(&priv->regs->cont, PCH_CTRL_OPT);
 iowrite32(reg_val, &priv->regs->opt);
}
