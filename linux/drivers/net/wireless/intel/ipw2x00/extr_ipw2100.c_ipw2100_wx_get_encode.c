
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int ieee; } ;


 struct ipw2100_priv* libipw_priv (struct net_device*) ;
 int libipw_wx_get_encode (int ,struct iw_request_info*,union iwreq_data*,char*) ;

__attribute__((used)) static int ipw2100_wx_get_encode(struct net_device *dev,
     struct iw_request_info *info,
     union iwreq_data *wrqu, char *key)
{




 struct ipw2100_priv *priv = libipw_priv(dev);
 return libipw_wx_get_encode(priv->ieee, info, wrqu, key);
}
