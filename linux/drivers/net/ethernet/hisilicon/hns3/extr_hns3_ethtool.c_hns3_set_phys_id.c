
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hnae3_handle {TYPE_2__* ae_algo; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_led_id ) (struct hnae3_handle*,int) ;} ;


 int EOPNOTSUPP ;
 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int stub1 (struct hnae3_handle*,int) ;

__attribute__((used)) static int hns3_set_phys_id(struct net_device *netdev,
       enum ethtool_phys_id_state state)
{
 struct hnae3_handle *h = hns3_get_handle(netdev);

 if (!h->ae_algo->ops->set_led_id)
  return -EOPNOTSUPP;

 return h->ae_algo->ops->set_led_id(h, state);
}
