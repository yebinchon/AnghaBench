
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sa_data; int sa_family; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
struct wl3501_card {int bssid; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int ARPHRD_ETHER ;
 int ETH_ALEN ;
 int memcpy (int ,int ,int ) ;
 struct wl3501_card* netdev_priv (struct net_device*) ;

__attribute__((used)) static int wl3501_get_wap(struct net_device *dev, struct iw_request_info *info,
     union iwreq_data *wrqu, char *extra)
{
 struct wl3501_card *this = netdev_priv(dev);

 wrqu->ap_addr.sa_family = ARPHRD_ETHER;
 memcpy(wrqu->ap_addr.sa_data, this->bssid, ETH_ALEN);
 return 0;
}
