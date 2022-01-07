
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int of_node; } ;
struct spi_device {int bits_per_word; TYPE_3__ dev; int irq; } ;
struct net_device {int irq; int dev_addr; int * netdev_ops; int if_port; int * ethtool_ops; } ;
struct TYPE_9__ {int phy_id; int phy_id_mask; int reg_num_mask; int mdio_write; int mdio_read; struct net_device* dev; } ;
struct TYPE_8__ {int register_write; int register_read; int width; struct ks8851_net* data; } ;
struct ks8851_net {int tx_space; int gpio; int rc_ccr; void* vdd_io; void* vdd_reg; struct net_device* netdev; int txq; int msg_enable; TYPE_2__ mii; TYPE_1__ eeprom; int spi_msg2; int * spi_xfer2; int spi_msg1; int spi_xfer1; int rxctrl_work; int tx_work; int statelock; int lock; struct spi_device* spidev; } ;


 int CCR_EEPROM ;
 unsigned int CIDER_ID ;
 int CIDER_REV_GET (unsigned int) ;
 unsigned int CIDER_REV_MASK ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GPIOF_OUT_INIT_LOW ;
 int GRR_GSR ;
 int IF_PORT_100BASET ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (void*) ;
 int KS_CCR ;
 int KS_CIDER ;
 int NETIF_MSG_DRV ;
 int NETIF_MSG_LINK ;
 int NETIF_MSG_PROBE ;
 int PCI_EEPROM_WIDTH_93C46 ;
 int PTR_ERR (void*) ;
 int SET_NETDEV_DEV (struct net_device*,TYPE_3__*) ;
 struct net_device* alloc_etherdev (int) ;
 int dev_err (TYPE_3__*,char*,...) ;
 int dev_info (TYPE_3__*,char*,int ) ;
 int devm_gpio_request_one (TYPE_3__*,int,int ,char*) ;
 void* devm_regulator_get (TYPE_3__*,char*) ;
 int free_netdev (struct net_device*) ;
 scalar_t__ gpio_is_valid (int) ;
 int gpio_set_value (int,int) ;
 int ks8851_eeprom_regread ;
 int ks8851_eeprom_regwrite ;
 int ks8851_ethtool_ops ;
 int ks8851_init_mac (struct ks8851_net*) ;
 int ks8851_netdev_ops ;
 int ks8851_phy_read ;
 int ks8851_phy_write ;
 void* ks8851_rdreg16 (struct ks8851_net*,int ) ;
 int ks8851_read_selftest (struct ks8851_net*) ;
 int ks8851_rxctrl_work ;
 int ks8851_soft_reset (struct ks8851_net*,int ) ;
 int ks8851_tx_work ;
 int msg_enable ;
 int mutex_init (int *) ;
 int netdev_info (struct net_device*,char*,int ,int ,int ,char*) ;
 struct ks8851_net* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_msg_init (int ,int) ;
 int of_get_named_gpio_flags (int ,char*,int ,int *) ;
 int register_netdev (struct net_device*) ;
 int regulator_disable (void*) ;
 int regulator_enable (void*) ;
 int skb_queue_head_init (int *) ;
 int spi_message_add_tail (int *,int *) ;
 int spi_message_init (int *) ;
 int spi_set_drvdata (struct spi_device*,struct ks8851_net*) ;
 int spin_lock_init (int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ks8851_probe(struct spi_device *spi)
{
 struct net_device *ndev;
 struct ks8851_net *ks;
 int ret;
 unsigned cider;
 int gpio;

 ndev = alloc_etherdev(sizeof(struct ks8851_net));
 if (!ndev)
  return -ENOMEM;

 spi->bits_per_word = 8;

 ks = netdev_priv(ndev);

 ks->netdev = ndev;
 ks->spidev = spi;
 ks->tx_space = 6144;

 gpio = of_get_named_gpio_flags(spi->dev.of_node, "reset-gpios",
           0, ((void*)0));
 if (gpio == -EPROBE_DEFER) {
  ret = gpio;
  goto err_gpio;
 }

 ks->gpio = gpio;
 if (gpio_is_valid(gpio)) {
  ret = devm_gpio_request_one(&spi->dev, gpio,
         GPIOF_OUT_INIT_LOW, "ks8851_rst_n");
  if (ret) {
   dev_err(&spi->dev, "reset gpio request failed\n");
   goto err_gpio;
  }
 }

 ks->vdd_io = devm_regulator_get(&spi->dev, "vdd-io");
 if (IS_ERR(ks->vdd_io)) {
  ret = PTR_ERR(ks->vdd_io);
  goto err_reg_io;
 }

 ret = regulator_enable(ks->vdd_io);
 if (ret) {
  dev_err(&spi->dev, "regulator vdd_io enable fail: %d\n",
   ret);
  goto err_reg_io;
 }

 ks->vdd_reg = devm_regulator_get(&spi->dev, "vdd");
 if (IS_ERR(ks->vdd_reg)) {
  ret = PTR_ERR(ks->vdd_reg);
  goto err_reg;
 }

 ret = regulator_enable(ks->vdd_reg);
 if (ret) {
  dev_err(&spi->dev, "regulator vdd enable fail: %d\n",
   ret);
  goto err_reg;
 }

 if (gpio_is_valid(gpio)) {
  usleep_range(10000, 11000);
  gpio_set_value(gpio, 1);
 }

 mutex_init(&ks->lock);
 spin_lock_init(&ks->statelock);

 INIT_WORK(&ks->tx_work, ks8851_tx_work);
 INIT_WORK(&ks->rxctrl_work, ks8851_rxctrl_work);



 spi_message_init(&ks->spi_msg1);
 spi_message_add_tail(&ks->spi_xfer1, &ks->spi_msg1);

 spi_message_init(&ks->spi_msg2);
 spi_message_add_tail(&ks->spi_xfer2[0], &ks->spi_msg2);
 spi_message_add_tail(&ks->spi_xfer2[1], &ks->spi_msg2);



 ks->eeprom.data = ks;
 ks->eeprom.width = PCI_EEPROM_WIDTH_93C46;
 ks->eeprom.register_read = ks8851_eeprom_regread;
 ks->eeprom.register_write = ks8851_eeprom_regwrite;


 ks->mii.dev = ndev;
 ks->mii.phy_id = 1,
 ks->mii.phy_id_mask = 1;
 ks->mii.reg_num_mask = 0xf;
 ks->mii.mdio_read = ks8851_phy_read;
 ks->mii.mdio_write = ks8851_phy_write;

 dev_info(&spi->dev, "message enable is %d\n", msg_enable);


 ks->msg_enable = netif_msg_init(msg_enable, (NETIF_MSG_DRV |
           NETIF_MSG_PROBE |
           NETIF_MSG_LINK));

 skb_queue_head_init(&ks->txq);

 ndev->ethtool_ops = &ks8851_ethtool_ops;
 SET_NETDEV_DEV(ndev, &spi->dev);

 spi_set_drvdata(spi, ks);

 netif_carrier_off(ks->netdev);
 ndev->if_port = IF_PORT_100BASET;
 ndev->netdev_ops = &ks8851_netdev_ops;
 ndev->irq = spi->irq;


 ks8851_soft_reset(ks, GRR_GSR);


 cider = ks8851_rdreg16(ks, KS_CIDER);
 if ((cider & ~CIDER_REV_MASK) != CIDER_ID) {
  dev_err(&spi->dev, "failed to read device ID\n");
  ret = -ENODEV;
  goto err_id;
 }


 ks->rc_ccr = ks8851_rdreg16(ks, KS_CCR);

 ks8851_read_selftest(ks);
 ks8851_init_mac(ks);

 ret = register_netdev(ndev);
 if (ret) {
  dev_err(&spi->dev, "failed to register network device\n");
  goto err_netdev;
 }

 netdev_info(ndev, "revision %d, MAC %pM, IRQ %d, %s EEPROM\n",
      CIDER_REV_GET(cider), ndev->dev_addr, ndev->irq,
      ks->rc_ccr & CCR_EEPROM ? "has" : "no");

 return 0;

err_netdev:
err_id:
 if (gpio_is_valid(gpio))
  gpio_set_value(gpio, 0);
 regulator_disable(ks->vdd_reg);
err_reg:
 regulator_disable(ks->vdd_io);
err_reg_io:
err_gpio:
 free_netdev(ndev);
 return ret;
}
