
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;
struct hinic_sq {int dummy; } ;
struct hinic_dev {int * txqs; int hwdev; struct net_device* netdev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_kfree (int *,int *) ;
 int * devm_kzalloc (int *,size_t,int ) ;
 int drv ;
 int hinic_clean_txq (int *) ;
 struct hinic_sq* hinic_hwdev_get_sq (int ,int) ;
 int hinic_hwdev_num_qps (int ) ;
 int hinic_init_txq (int *,struct hinic_sq*,struct net_device*) ;
 int netif_err (struct hinic_dev*,int ,struct net_device*,char*) ;

__attribute__((used)) static int create_txqs(struct hinic_dev *nic_dev)
{
 int err, i, j, num_txqs = hinic_hwdev_num_qps(nic_dev->hwdev);
 struct net_device *netdev = nic_dev->netdev;
 size_t txq_size;

 if (nic_dev->txqs)
  return -EINVAL;

 txq_size = num_txqs * sizeof(*nic_dev->txqs);
 nic_dev->txqs = devm_kzalloc(&netdev->dev, txq_size, GFP_KERNEL);
 if (!nic_dev->txqs)
  return -ENOMEM;

 for (i = 0; i < num_txqs; i++) {
  struct hinic_sq *sq = hinic_hwdev_get_sq(nic_dev->hwdev, i);

  err = hinic_init_txq(&nic_dev->txqs[i], sq, netdev);
  if (err) {
   netif_err(nic_dev, drv, netdev,
      "Failed to init Txq\n");
   goto err_init_txq;
  }
 }

 return 0;

err_init_txq:
 for (j = 0; j < i; j++)
  hinic_clean_txq(&nic_dev->txqs[j]);

 devm_kfree(&netdev->dev, nic_dev->txqs);
 return err;
}
