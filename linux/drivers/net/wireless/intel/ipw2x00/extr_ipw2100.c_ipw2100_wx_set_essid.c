
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; scalar_t__ flags; } ;
union iwreq_data {TYPE_1__ essid; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int status; int essid_len; int action_mutex; int essid; int config; } ;


 int CFG_STATIC_ESSID ;
 int EIO ;
 int IPW_DEBUG_WX (char*,...) ;
 int IW_ESSID_MAX_SIZE ;
 int STATUS_INITIALIZED ;
 int ipw2100_set_essid (struct ipw2100_priv*,char*,int,int ) ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;
 int memcmp (int ,char*,int) ;
 int memcpy (int ,char*,int) ;
 int min (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw2100_wx_set_essid(struct net_device *dev,
    struct iw_request_info *info,
    union iwreq_data *wrqu, char *extra)
{
 struct ipw2100_priv *priv = libipw_priv(dev);
 char *essid = "";
 int length = 0;
 int err = 0;

 mutex_lock(&priv->action_mutex);
 if (!(priv->status & STATUS_INITIALIZED)) {
  err = -EIO;
  goto done;
 }

 if (wrqu->essid.flags && wrqu->essid.length) {
  length = wrqu->essid.length;
  essid = extra;
 }

 if (length == 0) {
  IPW_DEBUG_WX("Setting ESSID to ANY\n");
  priv->config &= ~CFG_STATIC_ESSID;
  err = ipw2100_set_essid(priv, ((void*)0), 0, 0);
  goto done;
 }

 length = min(length, IW_ESSID_MAX_SIZE);

 priv->config |= CFG_STATIC_ESSID;

 if (priv->essid_len == length && !memcmp(priv->essid, extra, length)) {
  IPW_DEBUG_WX("ESSID set to current ESSID.\n");
  err = 0;
  goto done;
 }

 IPW_DEBUG_WX("Setting ESSID: '%*pE' (%d)\n", length, essid, length);

 priv->essid_len = length;
 memcpy(priv->essid, essid, priv->essid_len);

 err = ipw2100_set_essid(priv, essid, length, 0);

      done:
 mutex_unlock(&priv->action_mutex);
 return err;
}
