
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int of_node; } ;
struct serdev_device {TYPE_1__ dev; } ;
struct qcauart {int tx_work; struct net_device* net_dev; int lock; int frm_handle; struct serdev_device* serdev; } ;
struct net_device {int dev_addr; int name; } ;


 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 int IS_ERR (char const*) ;
 int SET_NETDEV_DEV (struct net_device*,TYPE_1__*) ;
 struct net_device* alloc_etherdev (int) ;
 int cancel_work_sync (int *) ;
 int dev_err (TYPE_1__*,char*,int ) ;
 int dev_info (TYPE_1__*,char*,int) ;
 int eth_hw_addr_random (struct net_device*) ;
 int ether_addr_copy (int,char const*) ;
 int free_netdev (struct net_device*) ;
 int is_valid_ether_addr (int) ;
 struct qcauart* netdev_priv (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 char* of_get_mac_address (int ) ;
 int of_property_read_u32 (int ,char*,int*) ;
 int pr_err (char*) ;
 int qca_serdev_ops ;
 int qcafrm_fsm_init_uart (int *) ;
 int qcauart_netdev_setup (struct net_device*) ;
 int qcauart_transmit ;
 int register_netdev (struct net_device*) ;
 int serdev_device_close (struct serdev_device*) ;
 int serdev_device_open (struct serdev_device*) ;
 int serdev_device_set_baudrate (struct serdev_device*,int) ;
 int serdev_device_set_client_ops (struct serdev_device*,int *) ;
 int serdev_device_set_drvdata (struct serdev_device*,struct qcauart*) ;
 int serdev_device_set_flow_control (struct serdev_device*,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int qca_uart_probe(struct serdev_device *serdev)
{
 struct net_device *qcauart_dev = alloc_etherdev(sizeof(struct qcauart));
 struct qcauart *qca;
 const char *mac;
 u32 speed = 115200;
 int ret;

 if (!qcauart_dev)
  return -ENOMEM;

 qcauart_netdev_setup(qcauart_dev);
 SET_NETDEV_DEV(qcauart_dev, &serdev->dev);

 qca = netdev_priv(qcauart_dev);
 if (!qca) {
  pr_err("qca_uart: Fail to retrieve private structure\n");
  ret = -ENOMEM;
  goto free;
 }
 qca->net_dev = qcauart_dev;
 qca->serdev = serdev;
 qcafrm_fsm_init_uart(&qca->frm_handle);

 spin_lock_init(&qca->lock);
 INIT_WORK(&qca->tx_work, qcauart_transmit);

 of_property_read_u32(serdev->dev.of_node, "current-speed", &speed);

 mac = of_get_mac_address(serdev->dev.of_node);

 if (!IS_ERR(mac))
  ether_addr_copy(qca->net_dev->dev_addr, mac);

 if (!is_valid_ether_addr(qca->net_dev->dev_addr)) {
  eth_hw_addr_random(qca->net_dev);
  dev_info(&serdev->dev, "Using random MAC address: %pM\n",
    qca->net_dev->dev_addr);
 }

 netif_carrier_on(qca->net_dev);
 serdev_device_set_drvdata(serdev, qca);
 serdev_device_set_client_ops(serdev, &qca_serdev_ops);

 ret = serdev_device_open(serdev);
 if (ret) {
  dev_err(&serdev->dev, "Unable to open device %s\n",
   qcauart_dev->name);
  goto free;
 }

 speed = serdev_device_set_baudrate(serdev, speed);
 dev_info(&serdev->dev, "Using baudrate: %u\n", speed);

 serdev_device_set_flow_control(serdev, 0);

 ret = register_netdev(qcauart_dev);
 if (ret) {
  dev_err(&serdev->dev, "Unable to register net device %s\n",
   qcauart_dev->name);
  serdev_device_close(serdev);
  cancel_work_sync(&qca->tx_work);
  goto free;
 }

 return 0;

free:
 free_netdev(qcauart_dev);
 return ret;
}
