
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_mlme {int cmd; } ;
struct ipw2100_priv {int dummy; } ;


 int EOPNOTSUPP ;


 int ipw2100_disassociate_bssid (struct ipw2100_priv*) ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;

__attribute__((used)) static int ipw2100_wx_set_mlme(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{
 struct ipw2100_priv *priv = libipw_priv(dev);
 struct iw_mlme *mlme = (struct iw_mlme *)extra;

 switch (mlme->cmd) {
 case 129:

  break;

 case 128:
  ipw2100_disassociate_bssid(priv);
  break;

 default:
  return -EOPNOTSUPP;
 }
 return 0;
}
