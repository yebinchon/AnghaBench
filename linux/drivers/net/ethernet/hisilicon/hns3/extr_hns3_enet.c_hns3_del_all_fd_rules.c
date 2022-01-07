
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hnae3_handle {TYPE_2__* ae_algo; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* del_all_fd_entries ) (struct hnae3_handle*,int) ;} ;


 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int stub1 (struct hnae3_handle*,int) ;

__attribute__((used)) static void hns3_del_all_fd_rules(struct net_device *netdev, bool clear_list)
{
 struct hnae3_handle *h = hns3_get_handle(netdev);

 if (h->ae_algo->ops->del_all_fd_entries)
  h->ae_algo->ops->del_all_fd_entries(h, clear_list);
}
