
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int flags; } ;
struct hinic_rx_mode_work {int rx_mode; int work; } ;
struct hinic_dev {int workq; struct hinic_rx_mode_work rx_mode_work; } ;


 int HINIC_RX_MODE_BC ;
 int HINIC_RX_MODE_MC ;
 int HINIC_RX_MODE_MC_ALL ;
 int HINIC_RX_MODE_PROMISC ;
 int HINIC_RX_MODE_UC ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 struct hinic_dev* netdev_priv (struct net_device*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void hinic_set_rx_mode(struct net_device *netdev)
{
 struct hinic_dev *nic_dev = netdev_priv(netdev);
 struct hinic_rx_mode_work *rx_mode_work;
 u32 rx_mode;

 rx_mode_work = &nic_dev->rx_mode_work;

 rx_mode = HINIC_RX_MODE_UC |
    HINIC_RX_MODE_MC |
    HINIC_RX_MODE_BC;

 if (netdev->flags & IFF_PROMISC)
  rx_mode |= HINIC_RX_MODE_PROMISC;
 else if (netdev->flags & IFF_ALLMULTI)
  rx_mode |= HINIC_RX_MODE_MC_ALL;

 rx_mode_work->rx_mode = rx_mode;

 queue_work(nic_dev->workq, &rx_mode_work->work);
}
