
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pch_can_priv {int ndev; TYPE_1__* regs; } ;
typedef enum pch_can_mode { ____Placeholder_pch_can_mode } pch_can_mode ;
struct TYPE_2__ {int cont; } ;





 int PCH_CTRL_IE ;
 int PCH_CTRL_IE_SIE_EIE ;
 int netdev_err (int ,char*) ;
 int pch_can_bit_clear (int *,int ) ;
 int pch_can_bit_set (int *,int ) ;

__attribute__((used)) static void pch_can_set_int_enables(struct pch_can_priv *priv,
        enum pch_can_mode interrupt_no)
{
 switch (interrupt_no) {
 case 129:
  pch_can_bit_clear(&priv->regs->cont, PCH_CTRL_IE);
  break;

 case 130:
  pch_can_bit_set(&priv->regs->cont, PCH_CTRL_IE_SIE_EIE);
  break;

 case 128:
  pch_can_bit_clear(&priv->regs->cont, PCH_CTRL_IE_SIE_EIE);
  break;

 default:
  netdev_err(priv->ndev, "Invalid interrupt number.\n");
  break;
 }
}
