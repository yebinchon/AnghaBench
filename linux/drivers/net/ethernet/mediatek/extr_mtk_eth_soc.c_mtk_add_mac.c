
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct phylink {int dummy; } ;
struct TYPE_11__ {int type; TYPE_2__* dev; } ;
struct mtk_mac {int id; struct phylink* phylink; struct device_node* of_node; TYPE_3__ phylink_config; int speed; int mode; int interface; TYPE_6__* hw_stats; scalar_t__ hwlro_ip_cnt; int hwlro_ip; struct mtk_eth* hw; } ;
struct mtk_eth {TYPE_4__** netdev; int * irq; TYPE_1__* soc; scalar_t__ hwlro; scalar_t__ base; int dev; struct mtk_mac** mac; } ;
struct device_node {int dummy; } ;
typedef int __be32 ;
struct TYPE_13__ {int reg_offset; int syncp; int stats_lock; } ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct TYPE_12__ {int watchdog_timeo; unsigned long base_addr; int hw_features; int vlan_features; int features; TYPE_2__ dev; int irq; int * ethtool_ops; int * netdev_ops; } ;
struct TYPE_9__ {int hw_features; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 scalar_t__ IS_ERR (struct phylink*) ;
 int MLO_AN_PHY ;
 int MTK_MAC_COUNT ;
 int MTK_STAT_OFFSET ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_LRO ;
 int PHYLINK_NETDEV ;
 int PHY_INTERFACE_MODE_NA ;
 int PTR_ERR (struct phylink*) ;
 int SET_NETDEV_DEV (TYPE_4__*,int ) ;
 int SPEED_UNKNOWN ;
 TYPE_4__* alloc_etherdev (int) ;
 int be32_to_cpup (int const*) ;
 int dev_err (int ,char*,...) ;
 TYPE_6__* devm_kzalloc (int ,int,int ) ;
 int free_netdev (TYPE_4__*) ;
 int memset (int ,int ,int) ;
 int mtk_ethtool_ops ;
 int mtk_netdev_ops ;
 int mtk_phylink_ops ;
 struct mtk_mac* netdev_priv (TYPE_4__*) ;
 int of_fwnode_handle (struct device_node*) ;
 int of_get_phy_mode (struct device_node*) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 struct phylink* phylink_create (TYPE_3__*,int ,int,int *) ;
 int spin_lock_init (int *) ;
 int u64_stats_init (int *) ;

__attribute__((used)) static int mtk_add_mac(struct mtk_eth *eth, struct device_node *np)
{
 const __be32 *_id = of_get_property(np, "reg", ((void*)0));
 struct phylink *phylink;
 int phy_mode, id, err;
 struct mtk_mac *mac;

 if (!_id) {
  dev_err(eth->dev, "missing mac id\n");
  return -EINVAL;
 }

 id = be32_to_cpup(_id);
 if (id >= MTK_MAC_COUNT) {
  dev_err(eth->dev, "%d is not a valid mac id\n", id);
  return -EINVAL;
 }

 if (eth->netdev[id]) {
  dev_err(eth->dev, "duplicate mac id found: %d\n", id);
  return -EINVAL;
 }

 eth->netdev[id] = alloc_etherdev(sizeof(*mac));
 if (!eth->netdev[id]) {
  dev_err(eth->dev, "alloc_etherdev failed\n");
  return -ENOMEM;
 }
 mac = netdev_priv(eth->netdev[id]);
 eth->mac[id] = mac;
 mac->id = id;
 mac->hw = eth;
 mac->of_node = np;

 memset(mac->hwlro_ip, 0, sizeof(mac->hwlro_ip));
 mac->hwlro_ip_cnt = 0;

 mac->hw_stats = devm_kzalloc(eth->dev,
         sizeof(*mac->hw_stats),
         GFP_KERNEL);
 if (!mac->hw_stats) {
  dev_err(eth->dev, "failed to allocate counter memory\n");
  err = -ENOMEM;
  goto free_netdev;
 }
 spin_lock_init(&mac->hw_stats->stats_lock);
 u64_stats_init(&mac->hw_stats->syncp);
 mac->hw_stats->reg_offset = id * MTK_STAT_OFFSET;


 phy_mode = of_get_phy_mode(np);
 if (phy_mode < 0) {
  dev_err(eth->dev, "incorrect phy-mode\n");
  err = -EINVAL;
  goto free_netdev;
 }


 mac->interface = PHY_INTERFACE_MODE_NA;
 mac->mode = MLO_AN_PHY;
 mac->speed = SPEED_UNKNOWN;

 mac->phylink_config.dev = &eth->netdev[id]->dev;
 mac->phylink_config.type = PHYLINK_NETDEV;

 phylink = phylink_create(&mac->phylink_config,
     of_fwnode_handle(mac->of_node),
     phy_mode, &mtk_phylink_ops);
 if (IS_ERR(phylink)) {
  err = PTR_ERR(phylink);
  goto free_netdev;
 }

 mac->phylink = phylink;

 SET_NETDEV_DEV(eth->netdev[id], eth->dev);
 eth->netdev[id]->watchdog_timeo = 5 * HZ;
 eth->netdev[id]->netdev_ops = &mtk_netdev_ops;
 eth->netdev[id]->base_addr = (unsigned long)eth->base;

 eth->netdev[id]->hw_features = eth->soc->hw_features;
 if (eth->hwlro)
  eth->netdev[id]->hw_features |= NETIF_F_LRO;

 eth->netdev[id]->vlan_features = eth->soc->hw_features &
  ~(NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_CTAG_RX);
 eth->netdev[id]->features |= eth->soc->hw_features;
 eth->netdev[id]->ethtool_ops = &mtk_ethtool_ops;

 eth->netdev[id]->irq = eth->irq[0];
 eth->netdev[id]->dev.of_node = np;

 return 0;

free_netdev:
 free_netdev(eth->netdev[id]);
 return err;
}
