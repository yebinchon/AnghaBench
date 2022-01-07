
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct stmmac_priv {int ioaddr; int dev; } ;
struct net_device {int phydev; } ;
struct ethtool_test {int flags; } ;
struct TYPE_2__ {int lb; int (* fn ) (struct stmmac_priv*) ;} ;


 int EOPNOTSUPP ;
 int ETH_TEST_FL_FAILED ;
 int ETH_TEST_FL_OFFLINE ;



 int memset (int*,int ,int) ;
 int msleep (int) ;
 int netdev_err (int ,char*) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int phy_loopback (int ,int) ;
 int stmmac_selftest_get_count (struct stmmac_priv*) ;
 TYPE_1__* stmmac_selftests ;
 int stmmac_set_mac_loopback (struct stmmac_priv*,int ,int) ;
 scalar_t__ stmmac_test_next_id ;
 int stub1 (struct stmmac_priv*) ;

void stmmac_selftest_run(struct net_device *dev,
    struct ethtool_test *etest, u64 *buf)
{
 struct stmmac_priv *priv = netdev_priv(dev);
 int count = stmmac_selftest_get_count(priv);
 int carrier = netif_carrier_ok(dev);
 int i, ret;

 memset(buf, 0, sizeof(*buf) * count);
 stmmac_test_next_id = 0;

 if (etest->flags != ETH_TEST_FL_OFFLINE) {
  netdev_err(priv->dev, "Only offline tests are supported\n");
  etest->flags |= ETH_TEST_FL_FAILED;
  return;
 } else if (!carrier) {
  netdev_err(priv->dev, "You need valid Link to execute tests\n");
  etest->flags |= ETH_TEST_FL_FAILED;
  return;
 }


 netif_carrier_off(dev);


 msleep(200);

 for (i = 0; i < count; i++) {
  ret = 0;

  switch (stmmac_selftests[i].lb) {
  case 128:
   ret = -EOPNOTSUPP;
   if (dev->phydev)
    ret = phy_loopback(dev->phydev, 1);
   if (!ret)
    break;

  case 130:
   ret = stmmac_set_mac_loopback(priv, priv->ioaddr, 1);
   break;
  case 129:
   break;
  default:
   ret = -EOPNOTSUPP;
   break;
  }





  if (ret) {
   netdev_err(priv->dev, "Loopback is not supported\n");
   etest->flags |= ETH_TEST_FL_FAILED;
   break;
  }

  ret = stmmac_selftests[i].fn(priv);
  if (ret && (ret != -EOPNOTSUPP))
   etest->flags |= ETH_TEST_FL_FAILED;
  buf[i] = ret;

  switch (stmmac_selftests[i].lb) {
  case 128:
   ret = -EOPNOTSUPP;
   if (dev->phydev)
    ret = phy_loopback(dev->phydev, 0);
   if (!ret)
    break;

  case 130:
   stmmac_set_mac_loopback(priv, priv->ioaddr, 0);
   break;
  default:
   break;
  }
 }


 if (carrier)
  netif_carrier_on(dev);
}
