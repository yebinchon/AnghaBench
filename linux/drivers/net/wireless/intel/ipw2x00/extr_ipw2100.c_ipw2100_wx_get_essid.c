
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int length; } ;
union iwreq_data {TYPE_1__ essid; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int config; int status; int essid_len; int essid; } ;


 int CFG_STATIC_ESSID ;
 int IPW_DEBUG_WX (char*,...) ;
 int STATUS_ASSOCIATED ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;
 int memcpy (char*,int ,int ) ;

__attribute__((used)) static int ipw2100_wx_get_essid(struct net_device *dev,
    struct iw_request_info *info,
    union iwreq_data *wrqu, char *extra)
{




 struct ipw2100_priv *priv = libipw_priv(dev);



 if (priv->config & CFG_STATIC_ESSID || priv->status & STATUS_ASSOCIATED) {
  IPW_DEBUG_WX("Getting essid: '%*pE'\n",
        priv->essid_len, priv->essid);
  memcpy(extra, priv->essid, priv->essid_len);
  wrqu->essid.length = priv->essid_len;
  wrqu->essid.flags = 1;
 } else {
  IPW_DEBUG_WX("Getting essid: ANY\n");
  wrqu->essid.length = 0;
  wrqu->essid.flags = 0;
 }

 return 0;
}
