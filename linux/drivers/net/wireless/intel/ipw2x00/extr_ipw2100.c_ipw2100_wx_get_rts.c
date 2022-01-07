
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; int fixed; int disabled; } ;
union iwreq_data {TYPE_1__ rts; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int rts_threshold; } ;


 int IPW_DEBUG_WX (char*,int) ;
 int RTS_DISABLED ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;

__attribute__((used)) static int ipw2100_wx_get_rts(struct net_device *dev,
         struct iw_request_info *info,
         union iwreq_data *wrqu, char *extra)
{




 struct ipw2100_priv *priv = libipw_priv(dev);

 wrqu->rts.value = priv->rts_threshold & ~RTS_DISABLED;
 wrqu->rts.fixed = 1;


 wrqu->rts.disabled = (priv->rts_threshold & RTS_DISABLED) ? 1 : 0;

 IPW_DEBUG_WX("GET RTS Threshold -> 0x%08X\n", wrqu->rts.value);

 return 0;
}
