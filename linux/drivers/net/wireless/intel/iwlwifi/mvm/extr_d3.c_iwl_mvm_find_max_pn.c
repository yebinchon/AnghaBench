
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct iwl_mvm_key_pn {TYPE_2__* q; } ;
struct TYPE_3__ {int * pn; } ;
struct ieee80211_key_seq {TYPE_1__ ccmp; } ;
struct ieee80211_key_conf {int dummy; } ;
struct TYPE_4__ {int ** pn; } ;


 int IEEE80211_CCMP_PN_LEN ;
 int ieee80211_get_key_rx_seq (struct ieee80211_key_conf*,int,struct ieee80211_key_seq*) ;
 scalar_t__ memcmp (int const*,int const*,int ) ;

__attribute__((used)) static const u8 *iwl_mvm_find_max_pn(struct ieee80211_key_conf *key,
         struct iwl_mvm_key_pn *ptk_pn,
         struct ieee80211_key_seq *seq,
         int tid, int queues)
{
 const u8 *ret = seq->ccmp.pn;
 int i;


 ieee80211_get_key_rx_seq(key, tid, seq);


 for (i = 1; i < queues; i++) {
  const u8 *tmp = ptk_pn->q[i].pn[tid];

  if (memcmp(ret, tmp, IEEE80211_CCMP_PN_LEN) <= 0)
   ret = tmp;
 }

 return ret;
}
