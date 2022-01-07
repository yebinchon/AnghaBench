
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int flags; } ;
struct hnae3_handle {int netdev_flags; TYPE_3__* ae_algo; TYPE_1__* pdev; } ;
typedef enum hnae3_loop { ____Placeholder_hnae3_loop } hnae3_loop ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* set_loopback ) (struct hnae3_handle*,int,int) ;int (* set_promisc_mode ) (struct hnae3_handle*,int,int) ;} ;
struct TYPE_4__ {int revision; } ;


 int ENOTSUPP ;
 int EOPNOTSUPP ;




 int IFF_PROMISC ;
 int hns3_enable_vlan_filter (struct net_device*,int) ;
 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int hns3_update_promisc_mode (struct net_device*,int ) ;
 int stub1 (struct hnae3_handle*,int,int) ;
 int stub2 (struct hnae3_handle*,int,int) ;

__attribute__((used)) static int hns3_lp_setup(struct net_device *ndev, enum hnae3_loop loop, bool en)
{
 struct hnae3_handle *h = hns3_get_handle(ndev);
 bool vlan_filter_enable;
 int ret;

 if (!h->ae_algo->ops->set_loopback ||
     !h->ae_algo->ops->set_promisc_mode)
  return -EOPNOTSUPP;

 switch (loop) {
 case 128:
 case 130:
 case 131:
 case 129:
  ret = h->ae_algo->ops->set_loopback(h, loop, en);
  break;
 default:
  ret = -ENOTSUPP;
  break;
 }

 if (ret || h->pdev->revision >= 0x21)
  return ret;

 if (en) {
  h->ae_algo->ops->set_promisc_mode(h, 1, 1);
 } else {

  hns3_update_promisc_mode(ndev, h->netdev_flags);
  vlan_filter_enable = ndev->flags & IFF_PROMISC ? 0 : 1;
  hns3_enable_vlan_filter(ndev, vlan_filter_enable);
 }

 return ret;
}
