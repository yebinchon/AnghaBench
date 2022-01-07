
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_5__ {scalar_t__ iw_mode; int monitor_type; TYPE_1__* ndev; } ;
typedef TYPE_2__ islpci_private ;
typedef scalar_t__ __u32 ;
struct TYPE_4__ {int type; } ;


 int ARPHRD_IEEE80211 ;
 int ARPHRD_IEEE80211_PRISM ;
 scalar_t__ IW_MODE_MONITOR ;
 TYPE_2__* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
prism54_set_prismhdr(struct net_device *ndev, struct iw_request_info *info,
       __u32 * uwrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);
 priv->monitor_type =
     (*uwrq ? ARPHRD_IEEE80211_PRISM : ARPHRD_IEEE80211);
 if (priv->iw_mode == IW_MODE_MONITOR)
  priv->ndev->type = priv->monitor_type;

 return 0;
}
