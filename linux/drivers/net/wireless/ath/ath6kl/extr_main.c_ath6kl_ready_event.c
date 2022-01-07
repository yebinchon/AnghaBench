
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef void* u32 ;
struct TYPE_6__ {int wlan_ver; void* abi_ver; } ;
struct TYPE_4__ {int cap; } ;
struct ath6kl {int event_wq; int flag; TYPE_3__ version; TYPE_2__* wiphy; TYPE_1__ hw; int mac_addr; } ;
typedef enum wmi_phy_cap { ____Placeholder_wmi_phy_cap } wmi_phy_cap ;
struct TYPE_5__ {int fw_version; } ;


 int ATH6KL_DBG_BOOT ;
 int ETH_ALEN ;
 int WMI_READY ;
 int ath6kl_dbg (int ,char*,int ,void*,void*,int) ;
 int memcpy (int ,int *,int ) ;
 int set_bit (int ,int *) ;
 int snprintf (int ,int,char*,int,int,int,int) ;
 scalar_t__ strlen (int ) ;
 int wake_up (int *) ;

void ath6kl_ready_event(void *devt, u8 *datap, u32 sw_ver, u32 abi_ver,
   enum wmi_phy_cap cap)
{
 struct ath6kl *ar = devt;

 memcpy(ar->mac_addr, datap, ETH_ALEN);

 ath6kl_dbg(ATH6KL_DBG_BOOT,
     "ready event mac addr %pM sw_ver 0x%x abi_ver 0x%x cap 0x%x\n",
     ar->mac_addr, sw_ver, abi_ver, cap);

 ar->version.wlan_ver = sw_ver;
 ar->version.abi_ver = abi_ver;
 ar->hw.cap = cap;

 if (strlen(ar->wiphy->fw_version) == 0) {
  snprintf(ar->wiphy->fw_version,
    sizeof(ar->wiphy->fw_version),
    "%u.%u.%u.%u",
    (ar->version.wlan_ver & 0xf0000000) >> 28,
    (ar->version.wlan_ver & 0x0f000000) >> 24,
    (ar->version.wlan_ver & 0x00ff0000) >> 16,
    (ar->version.wlan_ver & 0x0000ffff));
 }


 set_bit(WMI_READY, &ar->flag);
 wake_up(&ar->event_wq);
}
