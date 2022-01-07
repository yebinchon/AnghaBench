
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; int disabled; int fixed; } ;
union iwreq_data {TYPE_1__ frag; } ;
typedef int u16 ;
typedef int threshold ;
struct wl3501_card {int dummy; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int WL3501_MIB_ATTR_FRAG_THRESHOLD ;
 struct wl3501_card* netdev_priv (struct net_device*) ;
 int wl3501_get_mib_value (struct wl3501_card*,int ,int*,int) ;

__attribute__((used)) static int wl3501_get_frag_threshold(struct net_device *dev,
         struct iw_request_info *info,
         union iwreq_data *wrqu, char *extra)
{
 u16 threshold;
 struct wl3501_card *this = netdev_priv(dev);
 int rc = wl3501_get_mib_value(this, WL3501_MIB_ATTR_FRAG_THRESHOLD,
          &threshold, sizeof(threshold));
 if (!rc) {
  wrqu->frag.value = threshold;
  wrqu->frag.disabled = threshold >= 2346;
  wrqu->frag.fixed = 1;
 }
 return rc;
}
