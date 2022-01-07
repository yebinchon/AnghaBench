
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct net_device {int dummy; } ;
struct iw_scan_req {scalar_t__ essid_len; scalar_t__* essid; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; int flags; } ;
struct hostap_interface {TYPE_1__* local; } ;
struct TYPE_2__ {scalar_t__ iw_mode; scalar_t__ sta_fw_ver; int scan_timestamp; int dev_enabled; } ;
typedef TYPE_1__ local_info_t ;


 int ENETDOWN ;
 int EOPNOTSUPP ;
 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ IW_MODE_INFRA ;
 scalar_t__ IW_MODE_MASTER ;
 int IW_SCAN_THIS_ESSID ;
 scalar_t__ PRISM2_FW_VER (int,int,int) ;
 int jiffies ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 int prism2_request_hostscan (struct net_device*,scalar_t__*,scalar_t__) ;
 int prism2_request_scan (struct net_device*) ;

__attribute__((used)) static int prism2_ioctl_siwscan(struct net_device *dev,
    struct iw_request_info *info,
    struct iw_point *data, char *extra)
{
 struct hostap_interface *iface;
 local_info_t *local;
 int ret;
 u8 *ssid = ((void*)0), ssid_len = 0;
 struct iw_scan_req *req = (struct iw_scan_req *) extra;

 iface = netdev_priv(dev);
 local = iface->local;

 if (data->length < sizeof(struct iw_scan_req))
  req = ((void*)0);

 if (local->iw_mode == IW_MODE_MASTER) {



  data->length = 0;
  return 0;
 }

 if (!local->dev_enabled)
  return -ENETDOWN;

 if (req && data->flags & IW_SCAN_THIS_ESSID) {
  ssid = req->essid;
  ssid_len = req->essid_len;

  if (ssid_len &&
      ((local->iw_mode != IW_MODE_INFRA &&
        local->iw_mode != IW_MODE_ADHOC) ||
       (local->sta_fw_ver < PRISM2_FW_VER(1,3,1))))
   return -EOPNOTSUPP;
 }

 if (local->sta_fw_ver >= PRISM2_FW_VER(1,3,1))
  ret = prism2_request_hostscan(dev, ssid, ssid_len);
 else
  ret = prism2_request_scan(dev);

 if (ret == 0)
  local->scan_timestamp = jiffies;



 return ret;
}
