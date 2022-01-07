
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath10k {int dummy; } ;


 int ath10k_wait_for_peer_common (struct ath10k*,int,int const*,int) ;

int ath10k_wait_for_peer_created(struct ath10k *ar, int vdev_id, const u8 *addr)
{
 return ath10k_wait_for_peer_common(ar, vdev_id, addr, 1);
}
