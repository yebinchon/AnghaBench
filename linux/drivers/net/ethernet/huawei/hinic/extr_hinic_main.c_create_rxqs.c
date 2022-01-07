
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;
struct hinic_rq {int dummy; } ;
struct hinic_dev {int * rxqs; int hwdev; struct net_device* netdev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_kfree (int *,int *) ;
 int * devm_kzalloc (int *,size_t,int ) ;
 int drv ;
 int hinic_clean_rxq (int *) ;
 struct hinic_rq* hinic_hwdev_get_rq (int ,int) ;
 int hinic_hwdev_num_qps (int ) ;
 int hinic_init_rxq (int *,struct hinic_rq*,struct net_device*) ;
 int netif_err (struct hinic_dev*,int ,struct net_device*,char*) ;

__attribute__((used)) static int create_rxqs(struct hinic_dev *nic_dev)
{
 int err, i, j, num_rxqs = hinic_hwdev_num_qps(nic_dev->hwdev);
 struct net_device *netdev = nic_dev->netdev;
 size_t rxq_size;

 if (nic_dev->rxqs)
  return -EINVAL;

 rxq_size = num_rxqs * sizeof(*nic_dev->rxqs);
 nic_dev->rxqs = devm_kzalloc(&netdev->dev, rxq_size, GFP_KERNEL);
 if (!nic_dev->rxqs)
  return -ENOMEM;

 for (i = 0; i < num_rxqs; i++) {
  struct hinic_rq *rq = hinic_hwdev_get_rq(nic_dev->hwdev, i);

  err = hinic_init_rxq(&nic_dev->rxqs[i], rq, netdev);
  if (err) {
   netif_err(nic_dev, drv, netdev,
      "Failed to init rxq\n");
   goto err_init_rxq;
  }
 }

 return 0;

err_init_rxq:
 for (j = 0; j < i; j++)
  hinic_clean_rxq(&nic_dev->rxqs[j]);

 devm_kfree(&netdev->dev, nic_dev->rxqs);
 return err;
}
