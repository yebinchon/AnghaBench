
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int svc_map; } ;
struct ath10k {int peer_delete_done; TYPE_1__ wmi; } ;


 int HZ ;
 int WMI_SERVICE_SYNC_DELETE_CMDS ;
 int ath10k_wait_for_peer_deleted (struct ath10k*,int ,int const*) ;
 int ath10k_warn (struct ath10k*,char*) ;
 scalar_t__ test_bit (int ,int ) ;
 unsigned long wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static void ath10k_wait_for_peer_delete_done(struct ath10k *ar, u32 vdev_id,
          const u8 *addr)
{
 unsigned long time_left;
 int ret;

 if (test_bit(WMI_SERVICE_SYNC_DELETE_CMDS, ar->wmi.svc_map)) {
  ret = ath10k_wait_for_peer_deleted(ar, vdev_id, addr);
  if (ret) {
   ath10k_warn(ar, "failed wait for peer deleted");
   return;
  }

  time_left = wait_for_completion_timeout(&ar->peer_delete_done,
       5 * HZ);
  if (!time_left)
   ath10k_warn(ar, "Timeout in receiving peer delete response\n");
 }
}
