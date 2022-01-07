
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pch_can_priv {TYPE_2__* regs; } ;
struct TYPE_4__ {TYPE_1__* ifregs; } ;
struct TYPE_3__ {int creq; int cmask; int mask2; int mask1; int mcont; int id2; int id1; } ;


 int PCH_CMASK_ARB ;
 int PCH_CMASK_CTRL ;
 int PCH_CMASK_MASK ;
 int PCH_CMASK_RDWR ;
 int PCH_CMASK_RX_TX_GET ;
 int PCH_ID2_DIR ;
 int PCH_IF_MCONT_EOB ;
 int PCH_IF_MCONT_UMASK ;
 int PCH_MASK2_MDIR_MXTD ;
 int PCH_RX_OBJ_END ;
 int PCH_RX_OBJ_START ;
 int PCH_TX_OBJ_END ;
 int PCH_TX_OBJ_START ;
 int iowrite32 (int,int *) ;
 int pch_can_bit_clear (int *,int) ;
 int pch_can_bit_set (int *,int) ;
 int pch_can_rw_msg_obj (int *,int) ;

__attribute__((used)) static void pch_can_config_rx_tx_buffers(struct pch_can_priv *priv)
{
 int i;

 for (i = PCH_RX_OBJ_START; i <= PCH_RX_OBJ_END; i++) {
  iowrite32(PCH_CMASK_RX_TX_GET, &priv->regs->ifregs[0].cmask);
  pch_can_rw_msg_obj(&priv->regs->ifregs[0].creq, i);

  iowrite32(0x0, &priv->regs->ifregs[0].id1);
  iowrite32(0x0, &priv->regs->ifregs[0].id2);

  pch_can_bit_set(&priv->regs->ifregs[0].mcont,
    PCH_IF_MCONT_UMASK);


  if (i == PCH_RX_OBJ_END)
   pch_can_bit_set(&priv->regs->ifregs[0].mcont,
     PCH_IF_MCONT_EOB);
  else
   pch_can_bit_clear(&priv->regs->ifregs[0].mcont,
       PCH_IF_MCONT_EOB);

  iowrite32(0, &priv->regs->ifregs[0].mask1);
  pch_can_bit_clear(&priv->regs->ifregs[0].mask2,
      0x1fff | PCH_MASK2_MDIR_MXTD);


  iowrite32(PCH_CMASK_RDWR | PCH_CMASK_MASK | PCH_CMASK_ARB |
     PCH_CMASK_CTRL, &priv->regs->ifregs[0].cmask);

  pch_can_rw_msg_obj(&priv->regs->ifregs[0].creq, i);
 }

 for (i = PCH_TX_OBJ_START; i <= PCH_TX_OBJ_END; i++) {
  iowrite32(PCH_CMASK_RX_TX_GET, &priv->regs->ifregs[1].cmask);
  pch_can_rw_msg_obj(&priv->regs->ifregs[1].creq, i);


  iowrite32(0x0, &priv->regs->ifregs[1].id1);
  iowrite32(PCH_ID2_DIR, &priv->regs->ifregs[1].id2);


  iowrite32(PCH_IF_MCONT_EOB | PCH_IF_MCONT_UMASK,
     &priv->regs->ifregs[1].mcont);

  iowrite32(0, &priv->regs->ifregs[1].mask1);
  pch_can_bit_clear(&priv->regs->ifregs[1].mask2, 0x1fff);


  iowrite32(PCH_CMASK_RDWR | PCH_CMASK_MASK | PCH_CMASK_ARB |
     PCH_CMASK_CTRL, &priv->regs->ifregs[1].cmask);

  pch_can_rw_msg_obj(&priv->regs->ifregs[1].creq, i);
 }
}
