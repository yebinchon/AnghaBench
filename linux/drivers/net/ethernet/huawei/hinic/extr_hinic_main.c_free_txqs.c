
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;
struct hinic_dev {int * txqs; struct net_device* netdev; int hwdev; } ;


 int devm_kfree (int *,int *) ;
 int hinic_clean_txq (int *) ;
 int hinic_hwdev_num_qps (int ) ;

__attribute__((used)) static void free_txqs(struct hinic_dev *nic_dev)
{
 int i, num_txqs = hinic_hwdev_num_qps(nic_dev->hwdev);
 struct net_device *netdev = nic_dev->netdev;

 if (!nic_dev->txqs)
  return;

 for (i = 0; i < num_txqs; i++)
  hinic_clean_txq(&nic_dev->txqs[i]);

 devm_kfree(&netdev->dev, nic_dev->txqs);
 nic_dev->txqs = ((void*)0);
}
