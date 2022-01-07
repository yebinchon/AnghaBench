
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union iwreq_data {scalar_t__ mode; } ;
struct wl3501_card {scalar_t__ net_type; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int EINVAL ;
 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ IW_MODE_AUTO ;
 scalar_t__ IW_MODE_INFRA ;
 struct wl3501_card* netdev_priv (struct net_device*) ;
 int wl3501_reset (struct net_device*) ;

__attribute__((used)) static int wl3501_set_mode(struct net_device *dev, struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{
 int rc = -EINVAL;

 if (wrqu->mode == IW_MODE_INFRA ||
     wrqu->mode == IW_MODE_ADHOC ||
     wrqu->mode == IW_MODE_AUTO) {
  struct wl3501_card *this = netdev_priv(dev);

  this->net_type = wrqu->mode;
  rc = wl3501_reset(dev);
 }
 return rc;
}
