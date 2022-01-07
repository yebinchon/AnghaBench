
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int svc_map; } ;
struct ath10k {int num_peers; int peer_delete_done; TYPE_1__ wmi; int conf_mutex; } ;


 int ETIMEDOUT ;
 int HZ ;
 int WMI_SERVICE_SYNC_DELETE_CMDS ;
 int ath10k_wait_for_peer_deleted (struct ath10k*,int ,int const*) ;
 int ath10k_warn (struct ath10k*,char*) ;
 int ath10k_wmi_peer_delete (struct ath10k*,int ,int const*) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ test_bit (int ,int ) ;
 unsigned long wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int ath10k_peer_delete(struct ath10k *ar, u32 vdev_id, const u8 *addr)
{
 int ret;

 lockdep_assert_held(&ar->conf_mutex);

 ret = ath10k_wmi_peer_delete(ar, vdev_id, addr);
 if (ret)
  return ret;

 ret = ath10k_wait_for_peer_deleted(ar, vdev_id, addr);
 if (ret)
  return ret;

 if (test_bit(WMI_SERVICE_SYNC_DELETE_CMDS, ar->wmi.svc_map)) {
  unsigned long time_left;

  time_left = wait_for_completion_timeout
       (&ar->peer_delete_done, 5 * HZ);

  if (!time_left) {
   ath10k_warn(ar, "Timeout in receiving peer delete response\n");
   return -ETIMEDOUT;
  }
 }

 ar->num_peers--;

 return 0;
}
