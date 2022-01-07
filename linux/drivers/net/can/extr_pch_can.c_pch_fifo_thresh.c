
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pch_can_priv {TYPE_2__* regs; } ;
struct TYPE_4__ {TYPE_1__* ifregs; } ;
struct TYPE_3__ {int creq; int mcont; int id2; int cmask; } ;


 int PCH_CMASK_ARB ;
 int PCH_CMASK_CTRL ;
 int PCH_CMASK_RDWR ;
 int PCH_FIFO_THRESH ;
 int PCH_ID2_DIR ;
 int PCH_IF_MCONT_INTPND ;
 int iowrite32 (int,int *) ;
 int pch_can_bit_clear (int *,int ) ;
 int pch_can_int_clr (struct pch_can_priv*,int) ;
 int pch_can_rw_msg_obj (int *,int) ;

__attribute__((used)) static void pch_fifo_thresh(struct pch_can_priv *priv, int obj_id)
{
 if (obj_id < PCH_FIFO_THRESH) {
  iowrite32(PCH_CMASK_RDWR | PCH_CMASK_CTRL |
     PCH_CMASK_ARB, &priv->regs->ifregs[0].cmask);


  pch_can_bit_clear(&priv->regs->ifregs[0].id2, PCH_ID2_DIR);


  pch_can_bit_clear(&priv->regs->ifregs[0].mcont,
      PCH_IF_MCONT_INTPND);
  pch_can_rw_msg_obj(&priv->regs->ifregs[0].creq, obj_id);
 } else if (obj_id > PCH_FIFO_THRESH) {
  pch_can_int_clr(priv, obj_id);
 } else if (obj_id == PCH_FIFO_THRESH) {
  int cnt;
  for (cnt = 0; cnt < PCH_FIFO_THRESH; cnt++)
   pch_can_int_clr(priv, cnt + 1);
 }
}
