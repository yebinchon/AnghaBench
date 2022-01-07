
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_3__ {int wpa; } ;
typedef TYPE_1__ islpci_private ;
typedef int __u32 ;


 TYPE_1__* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
prism54_get_wpa(struct net_device *ndev, struct iw_request_info *info,
  __u32 * uwrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);
 *uwrq = priv->wpa;
 return 0;
}
