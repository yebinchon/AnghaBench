
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int nick; } ;


 int IPW_DEBUG_WX (char*,char*) ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;
 int memcpy (char*,int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int ipw2100_wx_get_nick(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{




 struct ipw2100_priv *priv = libipw_priv(dev);

 wrqu->data.length = strlen(priv->nick);
 memcpy(extra, priv->nick, wrqu->data.length);
 wrqu->data.flags = 1;

 IPW_DEBUG_WX("GET Nickname -> %s\n", extra);

 return 0;
}
