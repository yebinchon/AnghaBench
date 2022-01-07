
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct net_device {unsigned long base_addr; int irq; int dev_addr; int name; int * ethtool_ops; int watchdog_timeo; int * netdev_ops; } ;
struct emac_board_info {char const* clk; int emacrx_completed_flag; TYPE_1__* dev; scalar_t__ membase; void* phy_node; int lock; int msg_enable; struct platform_device* pdev; struct net_device* ndev; } ;
struct device_node {int dummy; } ;


 int EMAC_DEFAULT_MSG_ENABLE ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 scalar_t__ IS_ERR (char const*) ;
 int PTR_ERR (char const*) ;
 int SET_NETDEV_DEV (struct net_device*,TYPE_1__*) ;
 struct net_device* alloc_etherdev (int) ;
 int clk_disable_unprepare (char const*) ;
 int clk_prepare_enable (char const*) ;
 int debug ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_info (TYPE_1__*,char*,int ,scalar_t__,int,int ) ;
 int dev_warn (TYPE_1__*,char*,int ) ;
 char const* devm_clk_get (TYPE_1__*,int *) ;
 int emac_ethtool_ops ;
 int emac_netdev_ops ;
 int emac_powerup (struct net_device*) ;
 int emac_reset (struct emac_board_info*) ;
 int eth_hw_addr_random (struct net_device*) ;
 int ether_addr_copy (int ,char const*) ;
 int free_netdev (struct net_device*) ;
 int iounmap (scalar_t__) ;
 int irq_of_parse_and_map (struct device_node*,int ) ;
 int is_valid_ether_addr (int ) ;
 int msecs_to_jiffies (int ) ;
 int netdev_err (struct net_device*,char*) ;
 struct emac_board_info* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_msg_init (int ,int ) ;
 char* of_get_mac_address (struct device_node*) ;
 scalar_t__ of_iomap (struct device_node*,int ) ;
 void* of_parse_phandle (struct device_node*,char*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct net_device*) ;
 int register_netdev (struct net_device*) ;
 int spin_lock_init (int *) ;
 int sunxi_sram_claim (TYPE_1__*) ;
 int sunxi_sram_release (TYPE_1__*) ;
 int watchdog ;

__attribute__((used)) static int emac_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct emac_board_info *db;
 struct net_device *ndev;
 int ret = 0;
 const char *mac_addr;

 ndev = alloc_etherdev(sizeof(struct emac_board_info));
 if (!ndev) {
  dev_err(&pdev->dev, "could not allocate device.\n");
  return -ENOMEM;
 }

 SET_NETDEV_DEV(ndev, &pdev->dev);

 db = netdev_priv(ndev);

 db->dev = &pdev->dev;
 db->ndev = ndev;
 db->pdev = pdev;
 db->msg_enable = netif_msg_init(debug, EMAC_DEFAULT_MSG_ENABLE);

 spin_lock_init(&db->lock);

 db->membase = of_iomap(np, 0);
 if (!db->membase) {
  dev_err(&pdev->dev, "failed to remap registers\n");
  ret = -ENOMEM;
  goto out;
 }


 ndev->base_addr = (unsigned long)db->membase;
 ndev->irq = irq_of_parse_and_map(np, 0);
 if (ndev->irq == -ENXIO) {
  netdev_err(ndev, "No irq resource\n");
  ret = ndev->irq;
  goto out_iounmap;
 }

 db->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(db->clk)) {
  ret = PTR_ERR(db->clk);
  goto out_iounmap;
 }

 ret = clk_prepare_enable(db->clk);
 if (ret) {
  dev_err(&pdev->dev, "Error couldn't enable clock (%d)\n", ret);
  goto out_iounmap;
 }

 ret = sunxi_sram_claim(&pdev->dev);
 if (ret) {
  dev_err(&pdev->dev, "Error couldn't map SRAM to device\n");
  goto out_clk_disable_unprepare;
 }

 db->phy_node = of_parse_phandle(np, "phy-handle", 0);
 if (!db->phy_node)
  db->phy_node = of_parse_phandle(np, "phy", 0);
 if (!db->phy_node) {
  dev_err(&pdev->dev, "no associated PHY\n");
  ret = -ENODEV;
  goto out_release_sram;
 }


 mac_addr = of_get_mac_address(np);
 if (!IS_ERR(mac_addr))
  ether_addr_copy(ndev->dev_addr, mac_addr);


 if (!is_valid_ether_addr(ndev->dev_addr)) {
  eth_hw_addr_random(ndev);
  dev_warn(&pdev->dev, "using random MAC address %pM\n",
    ndev->dev_addr);
 }

 db->emacrx_completed_flag = 1;
 emac_powerup(ndev);
 emac_reset(db);

 ndev->netdev_ops = &emac_netdev_ops;
 ndev->watchdog_timeo = msecs_to_jiffies(watchdog);
 ndev->ethtool_ops = &emac_ethtool_ops;

 platform_set_drvdata(pdev, ndev);


 netif_carrier_off(ndev);

 ret = register_netdev(ndev);
 if (ret) {
  dev_err(&pdev->dev, "Registering netdev failed!\n");
  ret = -ENODEV;
  goto out_release_sram;
 }

 dev_info(&pdev->dev, "%s: at %p, IRQ %d MAC: %pM\n",
   ndev->name, db->membase, ndev->irq, ndev->dev_addr);

 return 0;

out_release_sram:
 sunxi_sram_release(&pdev->dev);
out_clk_disable_unprepare:
 clk_disable_unprepare(db->clk);
out_iounmap:
 iounmap(db->membase);
out:
 dev_err(db->dev, "not found (%d).\n", ret);

 free_netdev(ndev);

 return ret;
}
