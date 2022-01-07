
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int* pn; } ;
struct ieee80211_key_seq {TYPE_1__ ccmp; } ;
struct aes_sc {int pn; } ;


 int le64_to_cpu (int ) ;

__attribute__((used)) static void iwl_mvm_aes_sc_to_seq(struct aes_sc *sc,
      struct ieee80211_key_seq *seq)
{
 u64 pn;

 pn = le64_to_cpu(sc->pn);
 seq->ccmp.pn[0] = pn >> 40;
 seq->ccmp.pn[1] = pn >> 32;
 seq->ccmp.pn[2] = pn >> 24;
 seq->ccmp.pn[3] = pn >> 16;
 seq->ccmp.pn[4] = pn >> 8;
 seq->ccmp.pn[5] = pn;
}
