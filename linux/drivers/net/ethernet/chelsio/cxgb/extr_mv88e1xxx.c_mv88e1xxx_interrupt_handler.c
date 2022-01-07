
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cphy {int state; } ;


 int INTR_ENABLE_MASK ;
 int MV88E1XXX_INTERRUPT_STATUS_REGISTER ;
 int MV88E1XXX_INTR_AUTONEG_DONE ;
 int MV88E1XXX_INTR_LINK_CHNG ;
 int MV88E1XXX_SPECIFIC_STATUS_REGISTER ;
 int PHY_AUTONEG_EN ;
 int PHY_AUTONEG_RDY ;
 int PHY_LINK_UP ;
 int cphy_cause_link_change ;
 int simple_mdio_read (struct cphy*,int ,int*) ;

__attribute__((used)) static int mv88e1xxx_interrupt_handler(struct cphy *cphy)
{
 int cphy_cause = 0;
 u32 status;




 while (1) {
  u32 cause;

  (void) simple_mdio_read(cphy,
    MV88E1XXX_INTERRUPT_STATUS_REGISTER,
    &cause);
  cause &= INTR_ENABLE_MASK;
  if (!cause)
   break;

  if (cause & MV88E1XXX_INTR_LINK_CHNG) {
   (void) simple_mdio_read(cphy,
    MV88E1XXX_SPECIFIC_STATUS_REGISTER, &status);

   if (status & MV88E1XXX_INTR_LINK_CHNG)
    cphy->state |= PHY_LINK_UP;
   else {
    cphy->state &= ~PHY_LINK_UP;
    if (cphy->state & PHY_AUTONEG_EN)
     cphy->state &= ~PHY_AUTONEG_RDY;
    cphy_cause |= cphy_cause_link_change;
   }
  }

  if (cause & MV88E1XXX_INTR_AUTONEG_DONE)
   cphy->state |= PHY_AUTONEG_RDY;

  if ((cphy->state & (PHY_LINK_UP | PHY_AUTONEG_RDY)) ==
   (PHY_LINK_UP | PHY_AUTONEG_RDY))
    cphy_cause |= cphy_cause_link_change;
 }
 return cphy_cause;
}
