
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct hinic_rx_mode_work {int rx_mode; } ;
struct hinic_dev {int netdev; } ;


 int __dev_mc_sync (int ,int ,int ) ;
 int __dev_uc_sync (int ,int ,int ) ;
 int add_mac_addr ;
 int drv ;
 int hinic_port_set_rx_mode (struct hinic_dev*,int ) ;
 int netif_info (struct hinic_dev*,int ,int ,char*) ;
 int remove_mac_addr ;
 struct hinic_dev* rx_mode_work_to_nic_dev (struct hinic_rx_mode_work*) ;
 struct hinic_rx_mode_work* work_to_rx_mode_work (struct work_struct*) ;

__attribute__((used)) static void set_rx_mode(struct work_struct *work)
{
 struct hinic_rx_mode_work *rx_mode_work = work_to_rx_mode_work(work);
 struct hinic_dev *nic_dev = rx_mode_work_to_nic_dev(rx_mode_work);

 netif_info(nic_dev, drv, nic_dev->netdev, "set rx mode work\n");

 hinic_port_set_rx_mode(nic_dev, rx_mode_work->rx_mode);

 __dev_uc_sync(nic_dev->netdev, add_mac_addr, remove_mac_addr);
 __dev_mc_sync(nic_dev->netdev, add_mac_addr, remove_mac_addr);
}
