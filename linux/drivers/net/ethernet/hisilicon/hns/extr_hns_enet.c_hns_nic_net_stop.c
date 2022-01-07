
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int hns_nic_net_down (struct net_device*) ;

__attribute__((used)) static int hns_nic_net_stop(struct net_device *ndev)
{
 hns_nic_net_down(ndev);

 return 0;
}
