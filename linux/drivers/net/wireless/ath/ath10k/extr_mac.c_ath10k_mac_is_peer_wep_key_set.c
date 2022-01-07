
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ath10k_peer {TYPE_1__** keys; } ;
struct ath10k {int data_lock; } ;
struct TYPE_2__ {scalar_t__ keyidx; } ;


 int ARRAY_SIZE (TYPE_1__**) ;
 struct ath10k_peer* ath10k_peer_find (struct ath10k*,int ,scalar_t__ const*) ;
 int lockdep_assert_held (int *) ;

bool ath10k_mac_is_peer_wep_key_set(struct ath10k *ar, const u8 *addr,
        u8 keyidx)
{
 struct ath10k_peer *peer;
 int i;

 lockdep_assert_held(&ar->data_lock);






 peer = ath10k_peer_find(ar, 0, addr);
 if (!peer)
  return 0;

 for (i = 0; i < ARRAY_SIZE(peer->keys); i++) {
  if (peer->keys[i] && peer->keys[i]->keyidx == keyidx)
   return 1;
 }

 return 0;
}
