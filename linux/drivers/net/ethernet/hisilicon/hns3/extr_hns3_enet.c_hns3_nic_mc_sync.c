
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hnae3_handle {TYPE_2__* ae_algo; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* add_mc_addr ) (struct hnae3_handle*,unsigned char const*) ;} ;


 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int stub1 (struct hnae3_handle*,unsigned char const*) ;

__attribute__((used)) static int hns3_nic_mc_sync(struct net_device *netdev,
       const unsigned char *addr)
{
 struct hnae3_handle *h = hns3_get_handle(netdev);

 if (h->ae_algo->ops->add_mc_addr)
  return h->ae_algo->ops->add_mc_addr(h, addr);

 return 0;
}
