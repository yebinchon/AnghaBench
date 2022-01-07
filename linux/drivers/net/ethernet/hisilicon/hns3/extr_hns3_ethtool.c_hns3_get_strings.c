
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct hnae3_handle {TYPE_1__* ae_algo; } ;
struct hnae3_ae_ops {int (* get_strings ) (struct hnae3_handle*,int,int *) ;} ;
struct TYPE_2__ {struct hnae3_ae_ops* ops; } ;




 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 char* hns3_get_strings_tqps (struct hnae3_handle*,char*) ;
 int stub1 (struct hnae3_handle*,int,int *) ;
 int stub2 (struct hnae3_handle*,int,int *) ;

__attribute__((used)) static void hns3_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
{
 struct hnae3_handle *h = hns3_get_handle(netdev);
 const struct hnae3_ae_ops *ops = h->ae_algo->ops;
 char *buff = (char *)data;

 if (!ops->get_strings)
  return;

 switch (stringset) {
 case 129:
  buff = hns3_get_strings_tqps(h, buff);
  ops->get_strings(h, stringset, (u8 *)buff);
  break;
 case 128:
  ops->get_strings(h, stringset, data);
  break;
 default:
  break;
 }
}
