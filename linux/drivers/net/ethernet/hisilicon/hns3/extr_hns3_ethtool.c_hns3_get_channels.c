
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hnae3_handle {TYPE_2__* ae_algo; } ;
struct ethtool_channels {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* get_channels ) (struct hnae3_handle*,struct ethtool_channels*) ;} ;


 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int stub1 (struct hnae3_handle*,struct ethtool_channels*) ;

__attribute__((used)) static void hns3_get_channels(struct net_device *netdev,
         struct ethtool_channels *ch)
{
 struct hnae3_handle *h = hns3_get_handle(netdev);

 if (h->ae_algo->ops->get_channels)
  h->ae_algo->ops->get_channels(h, ch);
}
