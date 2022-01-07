
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct atmel_private {int station_state; int CurrentAuthentTransactionSeqNum; int irqlock; int management_timer; int ReAssociationRequestRetryCnt; int station_is_associated; int AssociationRequestRetryCnt; int exclude_unencrypted; int wep_is_on; int AuthenticationRequestRetryCnt; scalar_t__ card; int (* present_callback ) (scalar_t__) ;} ;


 int MAX_ASSOCIATION_RETRIES ;
 int MAX_AUTHENTICATION_RETRIES ;
 scalar_t__ MGMT_JIFFIES ;


 int STATION_STATE_MGMT_ERROR ;

 int WLAN_AUTH_OPEN ;
 int WLAN_AUTH_SHARED_KEY ;
 int atmel_enter_state (struct atmel_private*,int ) ;
 struct atmel_private* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int management_timer ;
 int mod_timer (int *,scalar_t__) ;
 struct atmel_private* priv ;
 int restart_search (struct atmel_private*) ;
 int send_association_request (struct atmel_private*,int) ;
 int send_authentication_request (struct atmel_private*,int,int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void atmel_management_timer(struct timer_list *t)
{
 struct atmel_private *priv = from_timer(priv, t, management_timer);
 unsigned long flags;


 if (priv->card && priv->present_callback &&
  !(*priv->present_callback)(priv->card))
  return;

 spin_lock_irqsave(&priv->irqlock, flags);

 switch (priv->station_state) {

 case 129:
  if (priv->AuthenticationRequestRetryCnt >= MAX_AUTHENTICATION_RETRIES) {
   atmel_enter_state(priv, STATION_STATE_MGMT_ERROR);
   priv->station_is_associated = 0;
   priv->AuthenticationRequestRetryCnt = 0;
   restart_search(priv);
  } else {
   int auth = WLAN_AUTH_OPEN;
   priv->AuthenticationRequestRetryCnt++;
   priv->CurrentAuthentTransactionSeqNum = 0x0001;
   mod_timer(&priv->management_timer, jiffies + MGMT_JIFFIES);
   if (priv->wep_is_on && priv->exclude_unencrypted)
    auth = WLAN_AUTH_SHARED_KEY;
   send_authentication_request(priv, auth, ((void*)0), 0);
   }
   break;

 case 130:
  if (priv->AssociationRequestRetryCnt == MAX_ASSOCIATION_RETRIES) {
   atmel_enter_state(priv, STATION_STATE_MGMT_ERROR);
   priv->station_is_associated = 0;
   priv->AssociationRequestRetryCnt = 0;
   restart_search(priv);
  } else {
   priv->AssociationRequestRetryCnt++;
   mod_timer(&priv->management_timer, jiffies + MGMT_JIFFIES);
   send_association_request(priv, 0);
  }
   break;

 case 128:
  if (priv->ReAssociationRequestRetryCnt == MAX_ASSOCIATION_RETRIES) {
   atmel_enter_state(priv, STATION_STATE_MGMT_ERROR);
   priv->station_is_associated = 0;
   priv->ReAssociationRequestRetryCnt = 0;
   restart_search(priv);
  } else {
   priv->ReAssociationRequestRetryCnt++;
   mod_timer(&priv->management_timer, jiffies + MGMT_JIFFIES);
   send_association_request(priv, 1);
  }
  break;

 default:
  break;
 }

 spin_unlock_irqrestore(&priv->irqlock, flags);
}
