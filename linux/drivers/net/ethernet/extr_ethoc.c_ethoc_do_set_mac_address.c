
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned char* dev_addr; } ;
struct ethoc {int dummy; } ;


 int MAC_ADDR0 ;
 int MAC_ADDR1 ;
 int ethoc_write (struct ethoc*,int ,unsigned char) ;
 struct ethoc* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ethoc_do_set_mac_address(struct net_device *dev)
{
 struct ethoc *priv = netdev_priv(dev);
 unsigned char *mac = dev->dev_addr;

 ethoc_write(priv, MAC_ADDR0, (mac[2] << 24) | (mac[3] << 16) |
         (mac[4] << 8) | (mac[5] << 0));
 ethoc_write(priv, MAC_ADDR1, (mac[0] << 8) | (mac[1] << 0));
}
