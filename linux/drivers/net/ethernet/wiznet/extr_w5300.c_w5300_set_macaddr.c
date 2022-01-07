
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w5300_priv {int dummy; } ;
struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int ETH_ALEN ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct w5300_priv* netdev_priv (struct net_device*) ;
 int w5300_write_macaddr (struct w5300_priv*) ;

__attribute__((used)) static int w5300_set_macaddr(struct net_device *ndev, void *addr)
{
 struct w5300_priv *priv = netdev_priv(ndev);
 struct sockaddr *sock_addr = addr;

 if (!is_valid_ether_addr(sock_addr->sa_data))
  return -EADDRNOTAVAIL;
 memcpy(ndev->dev_addr, sock_addr->sa_data, ETH_ALEN);
 w5300_write_macaddr(priv);
 return 0;
}
