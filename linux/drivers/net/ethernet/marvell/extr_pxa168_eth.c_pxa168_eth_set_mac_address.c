
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sockaddr {unsigned char* sa_data; } ;
struct pxa168_eth_private {int dummy; } ;
struct net_device {unsigned char* dev_addr; } ;


 int EADDRNOTAVAIL ;
 int ETH_ALEN ;
 int MAC_ADDR_HIGH ;
 int MAC_ADDR_LOW ;
 int is_valid_ether_addr (unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 struct pxa168_eth_private* netdev_priv (struct net_device*) ;
 int netif_addr_lock_bh (struct net_device*) ;
 int netif_addr_unlock_bh (struct net_device*) ;
 int update_hash_table_mac_address (struct pxa168_eth_private*,unsigned char*,int*) ;
 int wrl (struct pxa168_eth_private*,int ,int) ;

__attribute__((used)) static int pxa168_eth_set_mac_address(struct net_device *dev, void *addr)
{
 struct sockaddr *sa = addr;
 struct pxa168_eth_private *pep = netdev_priv(dev);
 unsigned char oldMac[ETH_ALEN];
 u32 mac_h, mac_l;

 if (!is_valid_ether_addr(sa->sa_data))
  return -EADDRNOTAVAIL;
 memcpy(oldMac, dev->dev_addr, ETH_ALEN);
 memcpy(dev->dev_addr, sa->sa_data, ETH_ALEN);

 mac_h = dev->dev_addr[0] << 24;
 mac_h |= dev->dev_addr[1] << 16;
 mac_h |= dev->dev_addr[2] << 8;
 mac_h |= dev->dev_addr[3];
 mac_l = dev->dev_addr[4] << 8;
 mac_l |= dev->dev_addr[5];
 wrl(pep, MAC_ADDR_HIGH, mac_h);
 wrl(pep, MAC_ADDR_LOW, mac_l);

 netif_addr_lock_bh(dev);
 update_hash_table_mac_address(pep, oldMac, dev->dev_addr);
 netif_addr_unlock_bh(dev);
 return 0;
}
