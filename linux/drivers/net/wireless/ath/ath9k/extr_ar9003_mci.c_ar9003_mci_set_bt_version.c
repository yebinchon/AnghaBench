
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct ath9k_hw_mci {int bt_version_known; void* bt_ver_minor; void* bt_ver_major; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;


 int MCI ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (int ,int ,char*,void*,void*) ;

void ar9003_mci_set_bt_version(struct ath_hw *ah, u8 major, u8 minor)
{
 struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;

 mci->bt_ver_major = major;
 mci->bt_ver_minor = minor;
 mci->bt_version_known = 1;
 ath_dbg(ath9k_hw_common(ah), MCI, "MCI BT version set: %d.%d\n",
  mci->bt_ver_major, mci->bt_ver_minor);
}
