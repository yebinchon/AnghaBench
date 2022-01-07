
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct s2io_nic {int dev; } ;
struct net_device {int name; } ;
struct ethtool_test {int flags; } ;


 int DBG_PRINT (int ,char*,int ) ;
 int ERR_DBG ;
 int ETH_TEST_FL_FAILED ;
 int ETH_TEST_FL_OFFLINE ;
 struct s2io_nic* netdev_priv (struct net_device*) ;
 int netif_running (int ) ;
 scalar_t__ s2io_bist_test (struct s2io_nic*,int*) ;
 int s2io_close (int ) ;
 scalar_t__ s2io_eeprom_test (struct s2io_nic*,int*) ;
 scalar_t__ s2io_link_test (struct s2io_nic*,int*) ;
 int s2io_open (int ) ;
 scalar_t__ s2io_register_test (struct s2io_nic*,int*) ;
 int s2io_reset (struct s2io_nic*) ;
 scalar_t__ s2io_rldram_test (struct s2io_nic*,int*) ;

__attribute__((used)) static void s2io_ethtool_test(struct net_device *dev,
         struct ethtool_test *ethtest,
         uint64_t *data)
{
 struct s2io_nic *sp = netdev_priv(dev);
 int orig_state = netif_running(sp->dev);

 if (ethtest->flags == ETH_TEST_FL_OFFLINE) {

  if (orig_state)
   s2io_close(sp->dev);

  if (s2io_register_test(sp, &data[0]))
   ethtest->flags |= ETH_TEST_FL_FAILED;

  s2io_reset(sp);

  if (s2io_rldram_test(sp, &data[3]))
   ethtest->flags |= ETH_TEST_FL_FAILED;

  s2io_reset(sp);

  if (s2io_eeprom_test(sp, &data[1]))
   ethtest->flags |= ETH_TEST_FL_FAILED;

  if (s2io_bist_test(sp, &data[4]))
   ethtest->flags |= ETH_TEST_FL_FAILED;

  if (orig_state)
   s2io_open(sp->dev);

  data[2] = 0;
 } else {

  if (!orig_state) {
   DBG_PRINT(ERR_DBG, "%s: is not up, cannot run test\n",
      dev->name);
   data[0] = -1;
   data[1] = -1;
   data[2] = -1;
   data[3] = -1;
   data[4] = -1;
  }

  if (s2io_link_test(sp, &data[2]))
   ethtest->flags |= ETH_TEST_FL_FAILED;

  data[0] = 0;
  data[1] = 0;
  data[3] = 0;
  data[4] = 0;
 }
}
