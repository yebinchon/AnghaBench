
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct enetc_ndev_priv {TYPE_1__* si; } ;
struct TYPE_2__ {int hw; } ;


 int EADDRNOTAVAIL ;
 int enetc_pf_set_primary_mac_addr (int *,int ,int ) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct enetc_ndev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int enetc_pf_set_mac_addr(struct net_device *ndev, void *addr)
{
 struct enetc_ndev_priv *priv = netdev_priv(ndev);
 struct sockaddr *saddr = addr;

 if (!is_valid_ether_addr(saddr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(ndev->dev_addr, saddr->sa_data, ndev->addr_len);
 enetc_pf_set_primary_mac_addr(&priv->si->hw, 0, saddr->sa_data);

 return 0;
}
