
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_dev {int * txqs; int * rxqs; int hwdev; } ;


 int hinic_hwdev_num_qps (int ) ;
 int update_rx_stats (struct hinic_dev*,int *) ;
 int update_tx_stats (struct hinic_dev*,int *) ;

__attribute__((used)) static void update_nic_stats(struct hinic_dev *nic_dev)
{
 int i, num_qps = hinic_hwdev_num_qps(nic_dev->hwdev);

 for (i = 0; i < num_qps; i++)
  update_rx_stats(nic_dev, &nic_dev->rxqs[i]);

 for (i = 0; i < num_qps; i++)
  update_tx_stats(nic_dev, &nic_dev->txqs[i]);
}
