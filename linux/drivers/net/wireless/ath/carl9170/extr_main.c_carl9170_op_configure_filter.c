
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct ieee80211_hw {struct ar9170* priv; } ;
struct TYPE_2__ {int ba_filter; scalar_t__ rx_filter; } ;
struct ar9170 {unsigned int rx_filter_caps; unsigned int filter_state; scalar_t__ cur_mc_hash; int sniffer_enabled; int mutex; TYPE_1__ fw; } ;


 int CARL9170_RX_FILTER_BAD ;
 int CARL9170_RX_FILTER_CTL_OTHER ;
 int CARL9170_RX_FILTER_CTL_PSPOLL ;
 int CARL9170_RX_FILTER_DECRY_FAIL ;
 int CARL9170_RX_FILTER_OTHER_RA ;
 unsigned int FIF_ALLMULTI ;
 unsigned int FIF_CONTROL ;
 unsigned int FIF_FCSFAIL ;
 unsigned int FIF_OTHER_BSS ;
 unsigned int FIF_PLCPFAIL ;
 unsigned int FIF_PSPOLL ;
 int IS_ACCEPTING_CMD (struct ar9170*) ;
 int WARN_ON (int ) ;
 int carl9170_rx_filter (struct ar9170*,int ) ;
 int carl9170_set_operating_mode (struct ar9170*) ;
 int carl9170_update_multicast (struct ar9170*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void carl9170_op_configure_filter(struct ieee80211_hw *hw,
      unsigned int changed_flags,
      unsigned int *new_flags,
      u64 multicast)
{
 struct ar9170 *ar = hw->priv;


 *new_flags &= FIF_ALLMULTI | ar->rx_filter_caps;

 if (!IS_ACCEPTING_CMD(ar))
  return;

 mutex_lock(&ar->mutex);

 ar->filter_state = *new_flags;





 if (*new_flags & FIF_ALLMULTI)
  multicast = ~0ULL;

 if (multicast != ar->cur_mc_hash)
  WARN_ON(carl9170_update_multicast(ar, multicast));

 if (changed_flags & FIF_OTHER_BSS) {
  ar->sniffer_enabled = !!(*new_flags & FIF_OTHER_BSS);

  WARN_ON(carl9170_set_operating_mode(ar));
 }

 if (ar->fw.rx_filter && changed_flags & ar->rx_filter_caps) {
  u32 rx_filter = 0;

  if (!ar->fw.ba_filter)
   rx_filter |= CARL9170_RX_FILTER_CTL_OTHER;

  if (!(*new_flags & (FIF_FCSFAIL | FIF_PLCPFAIL)))
   rx_filter |= CARL9170_RX_FILTER_BAD;

  if (!(*new_flags & FIF_CONTROL))
   rx_filter |= CARL9170_RX_FILTER_CTL_OTHER;

  if (!(*new_flags & FIF_PSPOLL))
   rx_filter |= CARL9170_RX_FILTER_CTL_PSPOLL;

  if (!(*new_flags & FIF_OTHER_BSS)) {
   rx_filter |= CARL9170_RX_FILTER_OTHER_RA;
   rx_filter |= CARL9170_RX_FILTER_DECRY_FAIL;
  }

  WARN_ON(carl9170_rx_filter(ar, rx_filter));
 }

 mutex_unlock(&ar->mutex);
}
