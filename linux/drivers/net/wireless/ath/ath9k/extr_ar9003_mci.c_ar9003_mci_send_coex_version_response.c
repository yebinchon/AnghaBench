
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ath9k_hw_mci {int wlan_ver_minor; int wlan_ver_major; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;


 int MCI_GPM ;
 int MCI_GPM_COEX_AGENT ;
 int MCI_GPM_COEX_B_MAJOR_VERSION ;
 int MCI_GPM_COEX_B_MINOR_VERSION ;
 int MCI_GPM_COEX_VERSION_RESPONSE ;
 int MCI_GPM_SET_TYPE_OPCODE (int *,int ,int ) ;
 int ar9003_mci_send_message (struct ath_hw*,int ,int ,int *,int,int,int) ;

__attribute__((used)) static void ar9003_mci_send_coex_version_response(struct ath_hw *ah,
        bool wait_done)
{
 struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;
 u32 payload[4] = {0, 0, 0, 0};

 MCI_GPM_SET_TYPE_OPCODE(payload, MCI_GPM_COEX_AGENT,
    MCI_GPM_COEX_VERSION_RESPONSE);
 *(((u8 *)payload) + MCI_GPM_COEX_B_MAJOR_VERSION) =
  mci->wlan_ver_major;
 *(((u8 *)payload) + MCI_GPM_COEX_B_MINOR_VERSION) =
  mci->wlan_ver_minor;
 ar9003_mci_send_message(ah, MCI_GPM, 0, payload, 16, wait_done, 1);
}
