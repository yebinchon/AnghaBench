
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hnae3_handle {TYPE_2__* ae_algo; } ;
struct ethtool_pauseparam {int tx_pause; int rx_pause; int autoneg; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* get_pauseparam ) (struct hnae3_handle*,int *,int *,int *) ;} ;


 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int stub1 (struct hnae3_handle*,int *,int *,int *) ;

__attribute__((used)) static void hns3_get_pauseparam(struct net_device *netdev,
    struct ethtool_pauseparam *param)
{
 struct hnae3_handle *h = hns3_get_handle(netdev);

 if (h->ae_algo->ops->get_pauseparam)
  h->ae_algo->ops->get_pauseparam(h, &param->autoneg,
   &param->rx_pause, &param->tx_pause);
}
