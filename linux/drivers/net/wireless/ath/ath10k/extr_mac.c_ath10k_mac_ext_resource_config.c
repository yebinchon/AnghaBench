
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int svc_map; } ;
struct ath10k {TYPE_1__ wmi; } ;
typedef enum wmi_host_platform_type { ____Placeholder_wmi_host_platform_type } wmi_host_platform_type ;


 int EOPNOTSUPP ;
 int WMI_HOST_PLATFORM_HIGH_PERF ;
 int WMI_HOST_PLATFORM_LOW_PERF ;
 int WMI_SERVICE_TX_MODE_DYNAMIC ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int ath10k_wmi_ext_resource_config (struct ath10k*,int,int ) ;
 scalar_t__ test_bit (int ,int ) ;

int ath10k_mac_ext_resource_config(struct ath10k *ar, u32 val)
{
 enum wmi_host_platform_type platform_type;
 int ret;

 if (test_bit(WMI_SERVICE_TX_MODE_DYNAMIC, ar->wmi.svc_map))
  platform_type = WMI_HOST_PLATFORM_LOW_PERF;
 else
  platform_type = WMI_HOST_PLATFORM_HIGH_PERF;

 ret = ath10k_wmi_ext_resource_config(ar, platform_type, val);

 if (ret && ret != -EOPNOTSUPP) {
  ath10k_warn(ar, "failed to configure ext resource: %d\n", ret);
  return ret;
 }

 return 0;
}
