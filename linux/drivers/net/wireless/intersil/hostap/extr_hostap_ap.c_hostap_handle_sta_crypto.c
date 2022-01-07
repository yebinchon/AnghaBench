
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sta_info {int users; struct lib80211_crypt_data* crypt; } ;
struct lib80211_crypt_data {int dummy; } ;
struct ieee80211_hdr {int addr2; } ;
struct TYPE_4__ {TYPE_3__* ap; } ;
typedef TYPE_1__ local_info_t ;
struct TYPE_5__ {int sta_table_lock; } ;


 struct sta_info* ap_get_sta (TYPE_3__*,int ) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int hostap_handle_sta_crypto(local_info_t *local,
        struct ieee80211_hdr *hdr,
        struct lib80211_crypt_data **crypt,
        void **sta_ptr)
{
 struct sta_info *sta;

 spin_lock(&local->ap->sta_table_lock);
 sta = ap_get_sta(local->ap, hdr->addr2);
 if (sta)
  atomic_inc(&sta->users);
 spin_unlock(&local->ap->sta_table_lock);

 if (!sta)
  return -1;

 if (sta->crypt) {
  *crypt = sta->crypt;
  *sta_ptr = sta;


 } else
  atomic_dec(&sta->users);

 return 0;
}
