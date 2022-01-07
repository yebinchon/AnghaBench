
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sa_family; int sa_data; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
struct wl3501_card {int bssid; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 scalar_t__ ARPHRD_ETHER ;
 int EINVAL ;
 int ETH_ALEN ;
 scalar_t__ is_broadcast_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct wl3501_card* netdev_priv (struct net_device*) ;

__attribute__((used)) static int wl3501_set_wap(struct net_device *dev, struct iw_request_info *info,
     union iwreq_data *wrqu, char *extra)
{
 struct wl3501_card *this = netdev_priv(dev);
 int rc = -EINVAL;


 if (wrqu->ap_addr.sa_family != ARPHRD_ETHER)
  goto out;
 if (is_broadcast_ether_addr(wrqu->ap_addr.sa_data)) {

 } else
  memcpy(this->bssid, wrqu->ap_addr.sa_data, ETH_ALEN);

 rc = 0;
out:
 return rc;
}
