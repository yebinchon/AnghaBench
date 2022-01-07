
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pch_can_priv {TYPE_2__* regs; } ;
struct TYPE_4__ {TYPE_1__* ifregs; } ;
struct TYPE_3__ {int creq; int mcont; int id1; int id2; int cmask; } ;


 int PCH_CMASK_ARB ;
 int PCH_CMASK_CTRL ;
 int PCH_CMASK_RDWR ;
 int PCH_ID2_DIR ;
 int PCH_IF_MCONT_INTPND ;
 int PCH_IF_MCONT_NEWDAT ;
 int PCH_IF_MCONT_TXRQXT ;
 scalar_t__ PCH_RX_OBJ_END ;
 scalar_t__ PCH_RX_OBJ_START ;
 scalar_t__ PCH_TX_OBJ_END ;
 scalar_t__ PCH_TX_OBJ_START ;
 int iowrite32 (int,int *) ;
 int pch_can_bit_clear (int *,int) ;
 int pch_can_bit_set (int *,int) ;
 int pch_can_rw_msg_obj (int *,scalar_t__) ;

__attribute__((used)) static void pch_can_int_clr(struct pch_can_priv *priv, u32 mask)
{

 if ((mask >= PCH_RX_OBJ_START) && (mask <= PCH_RX_OBJ_END)) {

  iowrite32(PCH_CMASK_RDWR | PCH_CMASK_CTRL | PCH_CMASK_ARB,
     &priv->regs->ifregs[0].cmask);


  pch_can_bit_clear(&priv->regs->ifregs[0].id2, PCH_ID2_DIR);


  pch_can_bit_clear(&priv->regs->ifregs[0].mcont,
      PCH_IF_MCONT_NEWDAT | PCH_IF_MCONT_INTPND);

  pch_can_rw_msg_obj(&priv->regs->ifregs[0].creq, mask);
 } else if ((mask >= PCH_TX_OBJ_START) && (mask <= PCH_TX_OBJ_END)) {



  iowrite32(PCH_CMASK_RDWR | PCH_CMASK_CTRL | PCH_CMASK_ARB,
     &priv->regs->ifregs[1].cmask);


  pch_can_bit_set(&priv->regs->ifregs[1].id2,
          PCH_ID2_DIR | (0x7ff << 2));
  iowrite32(0x0, &priv->regs->ifregs[1].id1);


  pch_can_bit_clear(&priv->regs->ifregs[1].mcont,
      PCH_IF_MCONT_NEWDAT | PCH_IF_MCONT_INTPND |
      PCH_IF_MCONT_TXRQXT);
  pch_can_rw_msg_obj(&priv->regs->ifregs[1].creq, mask);
 }
}
