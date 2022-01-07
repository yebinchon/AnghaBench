
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int config; int mutex; } ;


 int CFG_PREAMBLE_LONG ;
 int EINVAL ;
 int IPW_DEBUG_ASSOC (char*) ;
 int ipw_associate (struct ipw_priv*) ;
 int ipw_disassociate (struct ipw_priv*) ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw_wx_set_preamble(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{
 struct ipw_priv *priv = libipw_priv(dev);
 int mode = *(int *)extra;
 mutex_lock(&priv->mutex);

 if (mode == 1) {
  if (!(priv->config & CFG_PREAMBLE_LONG)) {
   priv->config |= CFG_PREAMBLE_LONG;


   IPW_DEBUG_ASSOC
       ("[re]association triggered due to preamble change.\n");
   if (!ipw_disassociate(priv))
    ipw_associate(priv);
  }
  goto done;
 }

 if (mode == 0) {
  priv->config &= ~CFG_PREAMBLE_LONG;
  goto done;
 }
 mutex_unlock(&priv->mutex);
 return -EINVAL;

      done:
 mutex_unlock(&priv->mutex);
 return 0;
}
