
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int txpower; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;



__attribute__((used)) static void ath9k_tpc_vif_iter(void *data, u8 *mac, struct ieee80211_vif *vif)
{
 int *power = data;

 if (*power < vif->bss_conf.txpower)
  *power = vif->bss_conf.txpower;
}
