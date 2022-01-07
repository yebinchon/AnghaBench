
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wmi_sta_keepalive_arg {int enabled; int interval; int method; int vdev_id; } ;
struct ath10k_vif {scalar_t__ vdev_type; int vdev_id; struct ath10k* ar; } ;
struct TYPE_2__ {int svc_map; } ;
struct ath10k {TYPE_1__ wmi; int conf_mutex; } ;


 int WMI_SERVICE_STA_KEEP_ALIVE ;
 int WMI_STA_KEEPALIVE_INTERVAL_DISABLE ;
 int WMI_STA_KEEPALIVE_METHOD_NULL_FRAME ;
 scalar_t__ WMI_VDEV_TYPE_STA ;
 int ath10k_warn (struct ath10k*,char*,int ,int) ;
 int ath10k_wmi_sta_keepalive (struct ath10k*,struct wmi_sta_keepalive_arg*) ;
 int lockdep_assert_held (int *) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int ath10k_mac_vif_disable_keepalive(struct ath10k_vif *arvif)
{
 struct ath10k *ar = arvif->ar;
 struct wmi_sta_keepalive_arg arg = {};
 int ret;

 lockdep_assert_held(&arvif->ar->conf_mutex);

 if (arvif->vdev_type != WMI_VDEV_TYPE_STA)
  return 0;

 if (!test_bit(WMI_SERVICE_STA_KEEP_ALIVE, ar->wmi.svc_map))
  return 0;




 arg.vdev_id = arvif->vdev_id;
 arg.enabled = 1;
 arg.method = WMI_STA_KEEPALIVE_METHOD_NULL_FRAME;
 arg.interval = WMI_STA_KEEPALIVE_INTERVAL_DISABLE;

 ret = ath10k_wmi_sta_keepalive(ar, &arg);
 if (ret) {
  ath10k_warn(ar, "failed to submit keepalive on vdev %i: %d\n",
       arvif->vdev_id, ret);
  return ret;
 }

 return 0;
}
