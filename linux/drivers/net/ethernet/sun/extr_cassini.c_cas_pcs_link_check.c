
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cas {scalar_t__ lstate; scalar_t__ link_transition; int link_transition_jiffies_valid; int cas_flags; void* link_transition_jiffies; scalar_t__ regs; int dev; scalar_t__ opened; } ;


 int CAS_FLAG_REG_PLUS ;
 scalar_t__ LINK_TRANSITION_LINK_UP ;
 scalar_t__ LINK_TRANSITION_ON_FAILURE ;
 scalar_t__ LINK_TRANSITION_REQUESTED_RESET ;
 scalar_t__ LINK_TRANSITION_STILL_FAILED ;
 int PCS_MII_STATUS_AUTONEG_COMP ;
 int PCS_MII_STATUS_LINK_STATUS ;
 int PCS_MII_STATUS_REMOTE_FAULT ;
 int PCS_SM_LINK_STATE_MASK ;
 int PCS_SM_WORD_SYNC_STATE_MASK ;
 scalar_t__ REG_PCS_MII_STATUS ;
 scalar_t__ REG_PCS_SERDES_STATE ;
 scalar_t__ REG_PCS_STATE_MACHINE ;
 int SM_LINK_STATE_UP ;
 int cas_set_link_modes (struct cas*) ;
 void* jiffies ;
 int link ;
 scalar_t__ link_down ;
 scalar_t__ link_transition_timeout ;
 scalar_t__ link_up ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;
 int netif_info (struct cas*,int ,int ,char*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int cas_pcs_link_check(struct cas *cp)
{
 u32 stat, state_machine;
 int retval = 0;





 stat = readl(cp->regs + REG_PCS_MII_STATUS);
 if ((stat & PCS_MII_STATUS_LINK_STATUS) == 0)
  stat = readl(cp->regs + REG_PCS_MII_STATUS);




 if ((stat & (PCS_MII_STATUS_AUTONEG_COMP |
       PCS_MII_STATUS_REMOTE_FAULT)) ==
     (PCS_MII_STATUS_AUTONEG_COMP | PCS_MII_STATUS_REMOTE_FAULT))
  netif_info(cp, link, cp->dev, "PCS RemoteFault\n");




 state_machine = readl(cp->regs + REG_PCS_STATE_MACHINE);
 if ((state_machine & PCS_SM_LINK_STATE_MASK) != SM_LINK_STATE_UP) {
  stat &= ~PCS_MII_STATUS_LINK_STATUS;
 } else if (state_machine & PCS_SM_WORD_SYNC_STATE_MASK) {
  stat |= PCS_MII_STATUS_LINK_STATUS;
 }

 if (stat & PCS_MII_STATUS_LINK_STATUS) {
  if (cp->lstate != link_up) {
   if (cp->opened) {
    cp->lstate = link_up;
    cp->link_transition = LINK_TRANSITION_LINK_UP;

    cas_set_link_modes(cp);
    netif_carrier_on(cp->dev);
   }
  }
 } else if (cp->lstate == link_up) {
  cp->lstate = link_down;
  if (link_transition_timeout != 0 &&
      cp->link_transition != LINK_TRANSITION_REQUESTED_RESET &&
      !cp->link_transition_jiffies_valid) {
   retval = 1;
   cp->link_transition = LINK_TRANSITION_REQUESTED_RESET;
   cp->link_transition_jiffies = jiffies;
   cp->link_transition_jiffies_valid = 1;
  } else {
   cp->link_transition = LINK_TRANSITION_ON_FAILURE;
  }
  netif_carrier_off(cp->dev);
  if (cp->opened)
   netif_info(cp, link, cp->dev, "PCS link down\n");
  if ((cp->cas_flags & CAS_FLAG_REG_PLUS) == 0) {

   stat = readl(cp->regs + REG_PCS_SERDES_STATE);
   if (stat == 0x03)
    return 1;
  }
 } else if (cp->lstate == link_down) {
  if (link_transition_timeout != 0 &&
      cp->link_transition != LINK_TRANSITION_REQUESTED_RESET &&
      !cp->link_transition_jiffies_valid) {





   retval = 1;
   cp->link_transition = LINK_TRANSITION_REQUESTED_RESET;
   cp->link_transition_jiffies = jiffies;
   cp->link_transition_jiffies_valid = 1;
  } else {
   cp->link_transition = LINK_TRANSITION_STILL_FAILED;
  }
 }

 return retval;
}
