
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_vif {int dummy; } ;
struct ieee80211_bss_conf {int dummy; } ;
struct ar5523_cmd_rateset {int dummy; } ;
struct TYPE_2__ {void* wlanmode; int rateset; } ;
struct ar5523_cmd_create_connection {TYPE_1__ connattr; void* size; void* bssid; void* connid; } ;
struct ar5523 {int dummy; } ;
typedef int create ;


 int WDCMSG_CREATE_CONNECTION ;
 int ar5523_cmd_write (struct ar5523*,int ,struct ar5523_cmd_create_connection*,int,int ) ;
 int ar5523_create_rateset (struct ar5523*,struct ieee80211_bss_conf*,int *,int) ;
 int ar5523_get_wlan_mode (struct ar5523*,struct ieee80211_bss_conf*) ;
 void* cpu_to_be32 (int) ;
 int memset (struct ar5523_cmd_create_connection*,int ,int) ;

__attribute__((used)) static int ar5523_create_connection(struct ar5523 *ar,
        struct ieee80211_vif *vif,
        struct ieee80211_bss_conf *bss)
{
 struct ar5523_cmd_create_connection create;
 int wlan_mode;

 memset(&create, 0, sizeof(create));
 create.connid = cpu_to_be32(2);
 create.bssid = cpu_to_be32(0);

 create.size = cpu_to_be32(sizeof(struct ar5523_cmd_rateset));

 ar5523_create_rateset(ar, bss, &create.connattr.rateset, 0);

 wlan_mode = ar5523_get_wlan_mode(ar, bss);
 create.connattr.wlanmode = cpu_to_be32(wlan_mode);

 return ar5523_cmd_write(ar, WDCMSG_CREATE_CONNECTION, &create,
    sizeof(create), 0);
}
