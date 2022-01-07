
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {struct device* parent; } ;
struct net_device {int addr_len; int * dev_addr; int addr_assign_type; TYPE_1__ dev; } ;
struct dpaa2_eth_priv {int mc_token; int mc_io; struct net_device* net_dev; } ;
struct device {int dummy; } ;


 int ETH_ALEN ;
 int NET_ADDR_PERM ;
 int dev_dbg_once (struct device*,char*) ;
 int dev_err (struct device*,char*) ;
 int dpni_get_port_mac_addr (int ,int ,int ,int *) ;
 int dpni_get_primary_mac_addr (int ,int ,int ,int *) ;
 int dpni_set_primary_mac_addr (int ,int ,int ,int *) ;
 int eth_hw_addr_random (struct net_device*) ;
 int ether_addr_equal (int *,int *) ;
 scalar_t__ is_zero_ether_addr (int *) ;
 int memcpy (int *,int *,int ) ;

__attribute__((used)) static int set_mac_addr(struct dpaa2_eth_priv *priv)
{
 struct net_device *net_dev = priv->net_dev;
 struct device *dev = net_dev->dev.parent;
 u8 mac_addr[ETH_ALEN], dpni_mac_addr[ETH_ALEN];
 int err;


 err = dpni_get_port_mac_addr(priv->mc_io, 0, priv->mc_token, mac_addr);
 if (err) {
  dev_err(dev, "dpni_get_port_mac_addr() failed\n");
  return err;
 }


 err = dpni_get_primary_mac_addr(priv->mc_io, 0, priv->mc_token,
     dpni_mac_addr);
 if (err) {
  dev_err(dev, "dpni_get_primary_mac_addr() failed\n");
  return err;
 }


 if (!is_zero_ether_addr(mac_addr)) {

  if (!ether_addr_equal(mac_addr, dpni_mac_addr)) {
   err = dpni_set_primary_mac_addr(priv->mc_io, 0,
       priv->mc_token,
       mac_addr);
   if (err) {
    dev_err(dev, "dpni_set_primary_mac_addr() failed\n");
    return err;
   }
  }
  memcpy(net_dev->dev_addr, mac_addr, net_dev->addr_len);
 } else if (is_zero_ether_addr(dpni_mac_addr)) {



  eth_hw_addr_random(net_dev);
  dev_dbg_once(dev, "device(s) have all-zero hwaddr, replaced with random\n");

  err = dpni_set_primary_mac_addr(priv->mc_io, 0, priv->mc_token,
      net_dev->dev_addr);
  if (err) {
   dev_err(dev, "dpni_set_primary_mac_addr() failed\n");
   return err;
  }






  net_dev->addr_assign_type = NET_ADDR_PERM;
 } else {



  memcpy(net_dev->dev_addr, dpni_mac_addr, net_dev->addr_len);
 }

 return 0;
}
