
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct hnae3_handle {TYPE_2__* ae_algo; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* get_status ) (struct hnae3_handle*) ;} ;


 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int stub1 (struct hnae3_handle*) ;

__attribute__((used)) static u32 hns3_get_link(struct net_device *netdev)
{
 struct hnae3_handle *h = hns3_get_handle(netdev);

 if (h->ae_algo->ops->get_status)
  return h->ae_algo->ops->get_status(h);
 else
  return 0;
}
