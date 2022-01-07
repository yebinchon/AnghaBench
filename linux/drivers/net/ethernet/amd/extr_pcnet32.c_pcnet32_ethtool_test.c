
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pcnet32_private {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_test {int flags; } ;


 int ETH_TEST_FL_FAILED ;
 int ETH_TEST_FL_OFFLINE ;
 int KERN_DEBUG ;
 int hw ;
 struct pcnet32_private* netdev_priv (struct net_device*) ;
 int netif_printk (struct pcnet32_private*,int ,int ,struct net_device*,char*) ;
 int pcnet32_loopback_test (struct net_device*,int *) ;

__attribute__((used)) static void pcnet32_ethtool_test(struct net_device *dev,
     struct ethtool_test *test, u64 * data)
{
 struct pcnet32_private *lp = netdev_priv(dev);
 int rc;

 if (test->flags == ETH_TEST_FL_OFFLINE) {
  rc = pcnet32_loopback_test(dev, data);
  if (rc) {
   netif_printk(lp, hw, KERN_DEBUG, dev,
         "Loopback test failed\n");
   test->flags |= ETH_TEST_FL_FAILED;
  } else
   netif_printk(lp, hw, KERN_DEBUG, dev,
         "Loopback test passed\n");
 } else
  netif_printk(lp, hw, KERN_DEBUG, dev,
        "No tests to run (specify 'Offline' on ethtool)\n");
}
