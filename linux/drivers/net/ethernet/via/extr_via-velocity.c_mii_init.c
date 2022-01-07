
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct velocity_info {int mii_status; int mac_regs; int phy_id; } ;


 int ADVERTISE_PAUSE_ASYM ;
 int ADVERTISE_PAUSE_CAP ;
 int BMCR_ISOLATE ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int MII_REG_BITS_OFF (int,int ,int ) ;
 int MII_REG_BITS_ON (int,int ,int ) ;
 int MII_REG_PSCR ;
 int MII_SREVISION ;
 int MII_TPISTATUS ;

 int PHYID_GET_PHY_ID (int ) ;





 int PLED_LALBE ;
 int PSCR_ACRSTX ;
 int TCSR_ECHODIS ;
 int VELOCITY_DUPLEX_FULL ;
 int velocity_mii_read (int ,int ,int*) ;
 int velocity_mii_write (int ,int ,int) ;

__attribute__((used)) static void mii_init(struct velocity_info *vptr, u32 mii_status)
{
 u16 BMCR;

 switch (PHYID_GET_PHY_ID(vptr->phy_id)) {
 case 132:
  MII_REG_BITS_ON((ADVERTISE_PAUSE_ASYM | ADVERTISE_PAUSE_CAP),
      MII_ADVERTISE, vptr->mac_regs);
  if (vptr->mii_status & VELOCITY_DUPLEX_FULL)
   MII_REG_BITS_ON(TCSR_ECHODIS, MII_SREVISION,
        vptr->mac_regs);
  else
   MII_REG_BITS_OFF(TCSR_ECHODIS, MII_SREVISION,
        vptr->mac_regs);
  MII_REG_BITS_ON(PLED_LALBE, MII_TPISTATUS, vptr->mac_regs);
  break;
 case 133:



  MII_REG_BITS_OFF((ADVERTISE_PAUSE_ASYM | ADVERTISE_PAUSE_CAP), MII_ADVERTISE, vptr->mac_regs);





  if (vptr->mii_status & VELOCITY_DUPLEX_FULL)
   MII_REG_BITS_ON(TCSR_ECHODIS, MII_SREVISION, vptr->mac_regs);
  else
   MII_REG_BITS_OFF(TCSR_ECHODIS, MII_SREVISION, vptr->mac_regs);



  MII_REG_BITS_ON(PLED_LALBE, MII_TPISTATUS, vptr->mac_regs);
  break;
 case 129:
 case 128:



  MII_REG_BITS_ON((ADVERTISE_PAUSE_ASYM | ADVERTISE_PAUSE_CAP), MII_ADVERTISE, vptr->mac_regs);





  if (vptr->mii_status & VELOCITY_DUPLEX_FULL)
   MII_REG_BITS_ON(TCSR_ECHODIS, MII_SREVISION, vptr->mac_regs);
  else
   MII_REG_BITS_OFF(TCSR_ECHODIS, MII_SREVISION, vptr->mac_regs);
  break;

 case 131:
 case 130:



  MII_REG_BITS_ON(PSCR_ACRSTX, MII_REG_PSCR, vptr->mac_regs);



  MII_REG_BITS_ON((ADVERTISE_PAUSE_ASYM | ADVERTISE_PAUSE_CAP), MII_ADVERTISE, vptr->mac_regs);
  break;
 default:
  ;
 }
 velocity_mii_read(vptr->mac_regs, MII_BMCR, &BMCR);
 if (BMCR & BMCR_ISOLATE) {
  BMCR &= ~BMCR_ISOLATE;
  velocity_mii_write(vptr->mac_regs, MII_BMCR, BMCR);
 }
}
