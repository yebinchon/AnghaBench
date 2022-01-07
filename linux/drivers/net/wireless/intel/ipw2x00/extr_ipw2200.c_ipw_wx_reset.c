
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int adapter_restart; } ;


 int IPW_DEBUG_WX (char*) ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int ipw_wx_reset(struct net_device *dev,
   struct iw_request_info *info,
   union iwreq_data *wrqu, char *extra)
{
 struct ipw_priv *priv = libipw_priv(dev);
 IPW_DEBUG_WX("RESET\n");
 schedule_work(&priv->adapter_restart);
 return 0;
}
