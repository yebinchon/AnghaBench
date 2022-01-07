
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct ethoc {int dummy; } ;


 int MAC_ADDR0 ;
 int MAC_ADDR1 ;
 int ethoc_read (struct ethoc*,int ) ;
 struct ethoc* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ethoc_get_mac_address(struct net_device *dev, void *addr)
{
 struct ethoc *priv = netdev_priv(dev);
 u8 *mac = (u8 *)addr;
 u32 reg;

 reg = ethoc_read(priv, MAC_ADDR0);
 mac[2] = (reg >> 24) & 0xff;
 mac[3] = (reg >> 16) & 0xff;
 mac[4] = (reg >> 8) & 0xff;
 mac[5] = (reg >> 0) & 0xff;

 reg = ethoc_read(priv, MAC_ADDR1);
 mac[0] = (reg >> 8) & 0xff;
 mac[1] = (reg >> 0) & 0xff;

 return 0;
}
