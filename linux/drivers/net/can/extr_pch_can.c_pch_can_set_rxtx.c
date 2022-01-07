
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pch_can_priv {TYPE_2__* regs; } ;
typedef enum pch_ifreg { ____Placeholder_pch_ifreg } pch_ifreg ;
struct TYPE_4__ {TYPE_1__* ifregs; } ;
struct TYPE_3__ {int creq; int id2; int mcont; int cmask; } ;


 int PCH_CMASK_ARB ;
 int PCH_CMASK_CTRL ;
 int PCH_CMASK_RDWR ;
 int PCH_CMASK_RX_TX_GET ;
 int PCH_ID_MSGVAL ;
 int PCH_IF_MCONT_RXIE ;
 int PCH_IF_MCONT_TXIE ;
 int iowrite32 (int,int *) ;
 int pch_can_bit_clear (int *,int ) ;
 int pch_can_bit_set (int *,int ) ;
 int pch_can_rw_msg_obj (int *,int ) ;

__attribute__((used)) static void pch_can_set_rxtx(struct pch_can_priv *priv, u32 buff_num,
        int set, enum pch_ifreg dir)
{
 u32 ie;

 if (dir)
  ie = PCH_IF_MCONT_TXIE;
 else
  ie = PCH_IF_MCONT_RXIE;


 iowrite32(PCH_CMASK_RX_TX_GET, &priv->regs->ifregs[dir].cmask);
 pch_can_rw_msg_obj(&priv->regs->ifregs[dir].creq, buff_num);


 iowrite32(PCH_CMASK_RDWR | PCH_CMASK_ARB | PCH_CMASK_CTRL,
    &priv->regs->ifregs[dir].cmask);

 if (set) {

  pch_can_bit_set(&priv->regs->ifregs[dir].mcont, ie);
  pch_can_bit_set(&priv->regs->ifregs[dir].id2, PCH_ID_MSGVAL);
 } else {

  pch_can_bit_clear(&priv->regs->ifregs[dir].mcont, ie);
  pch_can_bit_clear(&priv->regs->ifregs[dir].id2, PCH_ID_MSGVAL);
 }

 pch_can_rw_msg_obj(&priv->regs->ifregs[dir].creq, buff_num);
}
