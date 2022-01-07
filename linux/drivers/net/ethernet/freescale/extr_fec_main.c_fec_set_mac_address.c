
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int* dev_addr; int addr_len; } ;
struct fec_enet_private {scalar_t__ hwp; } ;


 int EADDRNOTAVAIL ;
 scalar_t__ FEC_ADDR_HIGH ;
 scalar_t__ FEC_ADDR_LOW ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int*,int ,int ) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int
fec_set_mac_address(struct net_device *ndev, void *p)
{
 struct fec_enet_private *fep = netdev_priv(ndev);
 struct sockaddr *addr = p;

 if (addr) {
  if (!is_valid_ether_addr(addr->sa_data))
   return -EADDRNOTAVAIL;
  memcpy(ndev->dev_addr, addr->sa_data, ndev->addr_len);
 }






 if (!netif_running(ndev))
  return 0;

 writel(ndev->dev_addr[3] | (ndev->dev_addr[2] << 8) |
  (ndev->dev_addr[1] << 16) | (ndev->dev_addr[0] << 24),
  fep->hwp + FEC_ADDR_LOW);
 writel((ndev->dev_addr[5] << 16) | (ndev->dev_addr[4] << 24),
  fep->hwp + FEC_ADDR_HIGH);
 return 0;
}
