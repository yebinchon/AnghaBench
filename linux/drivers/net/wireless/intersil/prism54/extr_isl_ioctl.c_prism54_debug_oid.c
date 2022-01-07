
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int name; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_3__ {int priv_oid; } ;
typedef TYPE_1__ islpci_private ;
typedef int __u32 ;


 TYPE_1__* netdev_priv (struct net_device*) ;
 int printk (char*,int ,int ) ;

__attribute__((used)) static int
prism54_debug_oid(struct net_device *ndev, struct iw_request_info *info,
    __u32 * uwrq, char *extra)
{
 islpci_private *priv = netdev_priv(ndev);

 priv->priv_oid = *uwrq;
 printk("%s: oid 0x%08X\n", ndev->name, *uwrq);

 return 0;
}
