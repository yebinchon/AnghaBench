
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int disabled; scalar_t__ flags; } ;
union iwreq_data {TYPE_1__ power; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int power_mode; } ;


 int IPW_DEBUG_WX (char*,int) ;
 int IPW_POWER_ENABLED ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;

__attribute__((used)) static int ipw2100_wx_get_power(struct net_device *dev,
    struct iw_request_info *info,
    union iwreq_data *wrqu, char *extra)
{




 struct ipw2100_priv *priv = libipw_priv(dev);

 if (!(priv->power_mode & IPW_POWER_ENABLED))
  wrqu->power.disabled = 1;
 else {
  wrqu->power.disabled = 0;
  wrqu->power.flags = 0;
 }

 IPW_DEBUG_WX("GET Power Management Mode -> %02X\n", priv->power_mode);

 return 0;
}
