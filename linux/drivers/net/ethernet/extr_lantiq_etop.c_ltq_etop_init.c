
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int watchdog_timeo; int addr_assign_type; } ;
struct ltq_etop_priv {TYPE_1__* pldata; } ;
struct TYPE_2__ {int mac; } ;


 int HZ ;
 int NET_ADDR_RANDOM ;
 int eth_random_addr (int ) ;
 int free_netdev (struct net_device*) ;
 int is_valid_ether_addr (int ) ;
 int ltq_etop_change_mtu (struct net_device*,int) ;
 int ltq_etop_hw_exit (struct net_device*) ;
 int ltq_etop_hw_init (struct net_device*) ;
 int ltq_etop_mdio_init (struct net_device*) ;
 int ltq_etop_set_mac_address (struct net_device*,struct sockaddr*) ;
 int ltq_etop_set_multicast_list (struct net_device*) ;
 int memcpy (struct sockaddr*,int *,int) ;
 struct ltq_etop_priv* netdev_priv (struct net_device*) ;
 int pr_warn (char*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int
ltq_etop_init(struct net_device *dev)
{
 struct ltq_etop_priv *priv = netdev_priv(dev);
 struct sockaddr mac;
 int err;
 bool random_mac = 0;

 dev->watchdog_timeo = 10 * HZ;
 err = ltq_etop_hw_init(dev);
 if (err)
  goto err_hw;
 ltq_etop_change_mtu(dev, 1500);

 memcpy(&mac, &priv->pldata->mac, sizeof(struct sockaddr));
 if (!is_valid_ether_addr(mac.sa_data)) {
  pr_warn("etop: invalid MAC, using random\n");
  eth_random_addr(mac.sa_data);
  random_mac = 1;
 }

 err = ltq_etop_set_mac_address(dev, &mac);
 if (err)
  goto err_netdev;


 if (random_mac)
  dev->addr_assign_type = NET_ADDR_RANDOM;

 ltq_etop_set_multicast_list(dev);
 err = ltq_etop_mdio_init(dev);
 if (err)
  goto err_netdev;
 return 0;

err_netdev:
 unregister_netdev(dev);
 free_netdev(dev);
err_hw:
 ltq_etop_hw_exit(dev);
 return err;
}
