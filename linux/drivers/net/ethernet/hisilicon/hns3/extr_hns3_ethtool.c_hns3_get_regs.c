
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hnae3_handle {TYPE_2__* ae_algo; } ;
struct ethtool_regs {int version; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* get_regs ) (struct hnae3_handle*,int *,void*) ;} ;


 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int stub1 (struct hnae3_handle*,int *,void*) ;

__attribute__((used)) static void hns3_get_regs(struct net_device *netdev,
     struct ethtool_regs *cmd, void *data)
{
 struct hnae3_handle *h = hns3_get_handle(netdev);

 if (!h->ae_algo->ops->get_regs)
  return;

 h->ae_algo->ops->get_regs(h, &cmd->version, data);
}
