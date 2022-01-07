
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u32 ;
struct net_device {unsigned char* dev_addr; } ;
struct hix5hd2_priv {scalar_t__ base; } ;


 scalar_t__ STATION_ADDR_HIGH ;
 scalar_t__ STATION_ADDR_LOW ;
 struct hix5hd2_priv* netdev_priv (struct net_device*) ;
 int writel_relaxed (unsigned char,scalar_t__) ;

__attribute__((used)) static void hix5hd2_hw_set_mac_addr(struct net_device *dev)
{
 struct hix5hd2_priv *priv = netdev_priv(dev);
 unsigned char *mac = dev->dev_addr;
 u32 val;

 val = mac[1] | (mac[0] << 8);
 writel_relaxed(val, priv->base + STATION_ADDR_HIGH);

 val = mac[5] | (mac[4] << 8) | (mac[3] << 16) | (mac[2] << 24);
 writel_relaxed(val, priv->base + STATION_ADDR_LOW);
}
