
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ath10k_vif {int vdev_id; struct ath10k* ar; } ;
struct ath10k_peer {int ** keys; } ;
struct ath10k {int data_lock; int conf_mutex; } ;


 int ARRAY_SIZE (int **) ;
 int DISABLE_KEY ;
 int ENOENT ;
 int ath10k_install_key (struct ath10k_vif*,int *,int ,int const*,int ) ;
 struct ath10k_peer* ath10k_peer_find (struct ath10k*,int ,int const*) ;
 int ath10k_warn (struct ath10k*,char*,int,int) ;
 int lockdep_assert_held (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ath10k_clear_peer_keys(struct ath10k_vif *arvif,
      const u8 *addr)
{
 struct ath10k *ar = arvif->ar;
 struct ath10k_peer *peer;
 int first_errno = 0;
 int ret;
 int i;
 u32 flags = 0;

 lockdep_assert_held(&ar->conf_mutex);

 spin_lock_bh(&ar->data_lock);
 peer = ath10k_peer_find(ar, arvif->vdev_id, addr);
 spin_unlock_bh(&ar->data_lock);

 if (!peer)
  return -ENOENT;

 for (i = 0; i < ARRAY_SIZE(peer->keys); i++) {
  if (peer->keys[i] == ((void*)0))
   continue;


  ret = ath10k_install_key(arvif, peer->keys[i],
      DISABLE_KEY, addr, flags);
  if (ret < 0 && first_errno == 0)
   first_errno = ret;

  if (ret < 0)
   ath10k_warn(ar, "failed to remove peer wep key %d: %d\n",
        i, ret);

  spin_lock_bh(&ar->data_lock);
  peer->keys[i] = ((void*)0);
  spin_unlock_bh(&ar->data_lock);
 }

 return first_errno;
}
