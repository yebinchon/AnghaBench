
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;
struct hinic_dev {int * rxqs; struct net_device* netdev; int hwdev; } ;


 int devm_kfree (int *,int *) ;
 int hinic_clean_rxq (int *) ;
 int hinic_hwdev_num_qps (int ) ;

__attribute__((used)) static void free_rxqs(struct hinic_dev *nic_dev)
{
 int i, num_rxqs = hinic_hwdev_num_qps(nic_dev->hwdev);
 struct net_device *netdev = nic_dev->netdev;

 if (!nic_dev->rxqs)
  return;

 for (i = 0; i < num_rxqs; i++)
  hinic_clean_rxq(&nic_dev->rxqs[i]);

 devm_kfree(&netdev->dev, nic_dev->rxqs);
 nic_dev->rxqs = ((void*)0);
}
