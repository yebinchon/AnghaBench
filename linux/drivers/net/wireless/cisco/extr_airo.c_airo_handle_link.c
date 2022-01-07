
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sa_family; int sa_data; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
typedef scalar_t__ u16 ;
struct airo_info {scalar_t__ scan_timeout; TYPE_2__* dev; int thr_wait; scalar_t__ expires; int jobs; int sem; int flags; scalar_t__ list_bss_task; } ;
struct TYPE_7__ {int name; } ;


 int ARPHRD_ETHER ;
 int EVACK ;
 int EV_LINK ;
 int FLAG_UPDATE_MULTI ;
 int FLAG_UPDATE_UNI ;
 int HZ ;
 int IN4500 (struct airo_info*,int ) ;
 int JOB_EVENT ;
 int LINKSTAT ;
 int OUT4500 (struct airo_info*,int ,int ) ;
 scalar_t__ RUN_AT (int) ;
 int SIOCGIWAP ;
 scalar_t__ STAT_ASSOC ;
 scalar_t__ STAT_FORCELOSS ;
 scalar_t__ STAT_REASSOC ;
 int airo_print_status (int ,scalar_t__) ;
 int airo_send_event (TYPE_2__*) ;
 scalar_t__ auto_wep ;
 scalar_t__ down_trylock (int *) ;
 int eth_zero_addr (int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 int netif_carrier_off (TYPE_2__*) ;
 int netif_carrier_on (TYPE_2__*) ;
 int set_bit (int ,int *) ;
 int wake_up_interruptible (int *) ;
 int wake_up_process (scalar_t__) ;
 int wireless_send_event (TYPE_2__*,int ,union iwreq_data*,int *) ;

__attribute__((used)) static void airo_handle_link(struct airo_info *ai)
{
 union iwreq_data wrqu;
 int scan_forceloss = 0;
 u16 status;


 status = le16_to_cpu(IN4500(ai, LINKSTAT));
 OUT4500(ai, EVACK, EV_LINK);

 if ((status == STAT_FORCELOSS) && (ai->scan_timeout > 0))
  scan_forceloss = 1;

 airo_print_status(ai->dev->name, status);

 if ((status == STAT_ASSOC) || (status == STAT_REASSOC)) {
  if (auto_wep)
   ai->expires = 0;
  if (ai->list_bss_task)
   wake_up_process(ai->list_bss_task);
  set_bit(FLAG_UPDATE_UNI, &ai->flags);
  set_bit(FLAG_UPDATE_MULTI, &ai->flags);

  if (down_trylock(&ai->sem) != 0) {
   set_bit(JOB_EVENT, &ai->jobs);
   wake_up_interruptible(&ai->thr_wait);
  } else
   airo_send_event(ai->dev);
  netif_carrier_on(ai->dev);
 } else if (!scan_forceloss) {
  if (auto_wep && !ai->expires) {
   ai->expires = RUN_AT(3*HZ);
   wake_up_interruptible(&ai->thr_wait);
  }


  eth_zero_addr(wrqu.ap_addr.sa_data);
  wrqu.ap_addr.sa_family = ARPHRD_ETHER;
  wireless_send_event(ai->dev, SIOCGIWAP, &wrqu, ((void*)0));
  netif_carrier_off(ai->dev);
 } else {
  netif_carrier_off(ai->dev);
 }
}
