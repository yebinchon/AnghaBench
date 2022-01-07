
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct smsc911x_data {int generation; int mac_lock; } ;
struct net_device {int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int EBUSY ;
 int ETH_ALEN ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 int netdev_info (struct net_device*,char*,int ) ;
 struct smsc911x_data* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int smsc911x_set_hw_mac_address (struct smsc911x_data*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int smsc911x_set_mac_address(struct net_device *dev, void *p)
{
 struct smsc911x_data *pdata = netdev_priv(dev);
 struct sockaddr *addr = p;




 if (pdata->generation <= 1 && netif_running(dev))
  return -EBUSY;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(dev->dev_addr, addr->sa_data, ETH_ALEN);

 spin_lock_irq(&pdata->mac_lock);
 smsc911x_set_hw_mac_address(pdata, dev->dev_addr);
 spin_unlock_irq(&pdata->mac_lock);

 netdev_info(dev, "MAC Address: %pM\n", dev->dev_addr);

 return 0;
}
