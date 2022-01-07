
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct hnae3_handle {int msg_enable; } ;


 struct hnae3_handle* hns3_get_handle (struct net_device*) ;

__attribute__((used)) static u32 hns3_get_msglevel(struct net_device *netdev)
{
 struct hnae3_handle *h = hns3_get_handle(netdev);

 return h->msg_enable;
}
