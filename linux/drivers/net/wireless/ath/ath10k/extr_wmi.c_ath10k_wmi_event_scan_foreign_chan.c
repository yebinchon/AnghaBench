
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int state; int on_channel; int roc_freq; int is_roc; } ;
struct ath10k {TYPE_2__ scan; TYPE_1__* hw; int scan_channel; int data_lock; } ;
struct TYPE_3__ {int wiphy; } ;






 int ath10k_scan_state_str (int) ;
 int ath10k_warn (struct ath10k*,char*,int ,int) ;
 int complete (int *) ;
 int ieee80211_get_channel (int ,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void ath10k_wmi_event_scan_foreign_chan(struct ath10k *ar, u32 freq)
{
 lockdep_assert_held(&ar->data_lock);

 switch (ar->scan.state) {
 case 130:
 case 128:
  ath10k_warn(ar, "received scan foreign chan event in an invalid scan state: %s (%d)\n",
       ath10k_scan_state_str(ar->scan.state),
       ar->scan.state);
  break;
 case 129:
 case 131:
  ar->scan_channel = ieee80211_get_channel(ar->hw->wiphy, freq);

  if (ar->scan.is_roc && ar->scan.roc_freq == freq)
   complete(&ar->scan.on_channel);
  break;
 }
}
