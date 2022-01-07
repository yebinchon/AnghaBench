
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw2100_priv {int status; } ;
typedef int card_state ;


 int EIO ;
 int IPW_CARD_DISABLE_COMPLETE_WAIT ;
 int IPW_DEBUG_INFO (char*,...) ;
 int IPW_HW_STATE_DISABLED ;
 int IPW_HW_STATE_ENABLED ;
 int IPW_ORD_CARD_DISABLED ;
 int STATUS_ENABLED ;
 int ipw2100_get_ordinal (struct ipw2100_priv*,int ,int*,int*) ;
 int udelay (int) ;

__attribute__((used)) static int ipw2100_wait_for_card_state(struct ipw2100_priv *priv, int state)
{
 int i;
 u32 card_state;
 u32 len = sizeof(card_state);
 int err;

 for (i = 0; i <= IPW_CARD_DISABLE_COMPLETE_WAIT * 1000; i += 50) {
  err = ipw2100_get_ordinal(priv, IPW_ORD_CARD_DISABLED,
       &card_state, &len);
  if (err) {
   IPW_DEBUG_INFO("Query of CARD_DISABLED ordinal "
           "failed.\n");
   return 0;
  }




  if ((card_state == state) ||
      ((priv->status & STATUS_ENABLED) ?
       IPW_HW_STATE_ENABLED : IPW_HW_STATE_DISABLED) == state) {
   if (state == IPW_HW_STATE_ENABLED)
    priv->status |= STATUS_ENABLED;
   else
    priv->status &= ~STATUS_ENABLED;

   return 0;
  }

  udelay(50);
 }

 IPW_DEBUG_INFO("ipw2100_wait_for_card_state to %s state timed out\n",
         state ? "DISABLED" : "ENABLED");
 return -EIO;
}
