
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m; } ;
union iwreq_data {TYPE_1__ freq; } ;
struct wl3501_card {int chan; int reg_domain; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int EINVAL ;
 scalar_t__ iw_valid_channel (int ,int) ;
 struct wl3501_card* netdev_priv (struct net_device*) ;
 int wl3501_reset (struct net_device*) ;

__attribute__((used)) static int wl3501_set_freq(struct net_device *dev, struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{
 struct wl3501_card *this = netdev_priv(dev);
 int channel = wrqu->freq.m;
 int rc = -EINVAL;

 if (iw_valid_channel(this->reg_domain, channel)) {
  this->chan = channel;
  rc = wl3501_reset(dev);
 }
 return rc;
}
