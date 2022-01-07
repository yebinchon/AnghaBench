
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; int started; int is_roc; } ;
struct ath10k {TYPE_1__ scan; int hw; int data_lock; } ;






 int ath10k_scan_state_str (int) ;
 int ath10k_warn (struct ath10k*,char*,int ,int) ;
 int complete (int *) ;
 int ieee80211_ready_on_channel (int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void ath10k_wmi_event_scan_started(struct ath10k *ar)
{
 lockdep_assert_held(&ar->data_lock);

 switch (ar->scan.state) {
 case 130:
 case 129:
 case 131:
  ath10k_warn(ar, "received scan started event in an invalid scan state: %s (%d)\n",
       ath10k_scan_state_str(ar->scan.state),
       ar->scan.state);
  break;
 case 128:
  ar->scan.state = 129;

  if (ar->scan.is_roc)
   ieee80211_ready_on_channel(ar->hw);

  complete(&ar->scan.started);
  break;
 }
}
