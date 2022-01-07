
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ready; int bt_ver_major; int bt_version_known; int update_2g5g; int is_2g; int wlan_channels_update; int* wlan_channels; int query_bt; int unhalt_bt_gpm; int halted_bt_gpm; int need_flush_btinfo; int config; scalar_t__ wlan_cal_done; scalar_t__ wlan_cal_seq; scalar_t__ bt_ver_minor; scalar_t__ bt_state; } ;
struct TYPE_4__ {TYPE_1__ mci; } ;
struct ath_hw {TYPE_2__ btcoex_hw; } ;


 scalar_t__ AR_SREV_9462 (struct ath_hw*) ;

void ath9k_hw_btcoex_init_mci(struct ath_hw *ah)
{
 ah->btcoex_hw.mci.ready = 0;
 ah->btcoex_hw.mci.bt_state = 0;
 ah->btcoex_hw.mci.bt_ver_major = 3;
 ah->btcoex_hw.mci.bt_ver_minor = 0;
 ah->btcoex_hw.mci.bt_version_known = 0;
 ah->btcoex_hw.mci.update_2g5g = 1;
 ah->btcoex_hw.mci.is_2g = 1;
 ah->btcoex_hw.mci.wlan_channels_update = 0;
 ah->btcoex_hw.mci.wlan_channels[0] = 0x00000000;
 ah->btcoex_hw.mci.wlan_channels[1] = 0xffffffff;
 ah->btcoex_hw.mci.wlan_channels[2] = 0xffffffff;
 ah->btcoex_hw.mci.wlan_channels[3] = 0x7fffffff;
 ah->btcoex_hw.mci.query_bt = 1;
 ah->btcoex_hw.mci.unhalt_bt_gpm = 1;
 ah->btcoex_hw.mci.halted_bt_gpm = 0;
 ah->btcoex_hw.mci.need_flush_btinfo = 0;
 ah->btcoex_hw.mci.wlan_cal_seq = 0;
 ah->btcoex_hw.mci.wlan_cal_done = 0;
 ah->btcoex_hw.mci.config = (AR_SREV_9462(ah)) ? 0x2201 : 0xa4c1;
}
