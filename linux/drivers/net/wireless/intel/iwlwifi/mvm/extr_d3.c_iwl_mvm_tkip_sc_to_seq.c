
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tkip_sc {int iv16; int iv32; } ;
struct TYPE_2__ {int iv16; int iv32; } ;
struct ieee80211_key_seq {TYPE_1__ tkip; } ;


 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void iwl_mvm_tkip_sc_to_seq(struct tkip_sc *sc,
       struct ieee80211_key_seq *seq)
{
 seq->tkip.iv32 = le32_to_cpu(sc->iv32);
 seq->tkip.iv16 = le16_to_cpu(sc->iv16);
}
