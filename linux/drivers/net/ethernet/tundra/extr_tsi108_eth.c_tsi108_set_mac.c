
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tsi108_prv_data {int misclock; int txlock; scalar_t__ link_up; scalar_t__ txfree; } ;
struct net_device {unsigned char* dev_addr; } ;


 int EADDRNOTAVAIL ;
 int TSI108_MAC_ADDR1 ;
 int TSI108_MAC_ADDR2 ;
 int TSI_WRITE (int ,int) ;
 int is_valid_ether_addr (void*) ;
 struct tsi108_prv_data* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int tsi108_set_mac(struct net_device *dev, void *addr)
{
 struct tsi108_prv_data *data = netdev_priv(dev);
 u32 word1, word2;
 int i;

 if (!is_valid_ether_addr(addr))
  return -EADDRNOTAVAIL;

 for (i = 0; i < 6; i++)

  dev->dev_addr[i] = ((unsigned char *)addr)[i + 2];

 word2 = (dev->dev_addr[0] << 16) | (dev->dev_addr[1] << 24);

 word1 = (dev->dev_addr[2] << 0) | (dev->dev_addr[3] << 8) |
     (dev->dev_addr[4] << 16) | (dev->dev_addr[5] << 24);

 spin_lock_irq(&data->misclock);
 TSI_WRITE(TSI108_MAC_ADDR1, word1);
 TSI_WRITE(TSI108_MAC_ADDR2, word2);
 spin_lock(&data->txlock);

 if (data->txfree && data->link_up)
  netif_wake_queue(dev);

 spin_unlock(&data->txlock);
 spin_unlock_irq(&data->misclock);
 return 0;
}
