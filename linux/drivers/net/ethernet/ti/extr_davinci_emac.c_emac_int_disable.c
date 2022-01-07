
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_priv {scalar_t__ version; int (* int_disable ) () ;} ;


 int EMAC_CTRL_EWCTL ;
 int EMAC_DM646X_CMRXINTEN ;
 int EMAC_DM646X_CMTXINTEN ;
 int EMAC_DM646X_MACEOIVECTOR ;
 int EMAC_DM646X_MAC_EOI_C0_RXEN ;
 int EMAC_DM646X_MAC_EOI_C0_TXEN ;
 scalar_t__ EMAC_VERSION_2 ;
 int emac_ctrl_write (int ,int) ;
 int emac_write (int ,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int stub1 () ;

__attribute__((used)) static void emac_int_disable(struct emac_priv *priv)
{
 if (priv->version == EMAC_VERSION_2) {
  unsigned long flags;

  local_irq_save(flags);



  emac_ctrl_write(EMAC_DM646X_CMRXINTEN, 0x0);
  emac_ctrl_write(EMAC_DM646X_CMTXINTEN, 0x0);

  if (priv->int_disable)
   priv->int_disable();




  emac_write(EMAC_DM646X_MACEOIVECTOR,
   EMAC_DM646X_MAC_EOI_C0_RXEN);


  emac_write(EMAC_DM646X_MACEOIVECTOR,
   EMAC_DM646X_MAC_EOI_C0_TXEN);

  local_irq_restore(flags);

 } else {

  emac_ctrl_write(EMAC_CTRL_EWCTL, 0x0);
 }
}
