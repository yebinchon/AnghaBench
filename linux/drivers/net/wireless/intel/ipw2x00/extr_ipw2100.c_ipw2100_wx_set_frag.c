
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; scalar_t__ disabled; int fixed; } ;
union iwreq_data {TYPE_1__ frag; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int frag_threshold; TYPE_2__* ieee; } ;
struct TYPE_4__ {int fts; } ;


 int DEFAULT_FTS ;
 int EINVAL ;
 int FRAG_DISABLED ;
 int IPW_DEBUG_WX (char*,int) ;
 int MAX_FRAG_THRESHOLD ;
 int MIN_FRAG_THRESHOLD ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;

__attribute__((used)) static int ipw2100_wx_set_frag(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{




 struct ipw2100_priv *priv = libipw_priv(dev);

 if (!wrqu->frag.fixed)
  return -EINVAL;

 if (wrqu->frag.disabled) {
  priv->frag_threshold |= FRAG_DISABLED;
  priv->ieee->fts = DEFAULT_FTS;
 } else {
  if (wrqu->frag.value < MIN_FRAG_THRESHOLD ||
      wrqu->frag.value > MAX_FRAG_THRESHOLD)
   return -EINVAL;

  priv->ieee->fts = wrqu->frag.value & ~0x1;
  priv->frag_threshold = priv->ieee->fts;
 }

 IPW_DEBUG_WX("SET Frag Threshold -> %d\n", priv->ieee->fts);

 return 0;
}
