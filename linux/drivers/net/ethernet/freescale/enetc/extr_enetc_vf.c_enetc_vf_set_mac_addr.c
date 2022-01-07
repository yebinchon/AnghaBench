
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dummy; } ;
struct enetc_ndev_priv {int dummy; } ;


 int EADDRNOTAVAIL ;
 int enetc_msg_vsi_set_primary_mac_addr (struct enetc_ndev_priv*,struct sockaddr*) ;
 int is_valid_ether_addr (int ) ;
 struct enetc_ndev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int enetc_vf_set_mac_addr(struct net_device *ndev, void *addr)
{
 struct enetc_ndev_priv *priv = netdev_priv(ndev);
 struct sockaddr *saddr = addr;
 int err;

 if (!is_valid_ether_addr(saddr->sa_data))
  return -EADDRNOTAVAIL;

 err = enetc_msg_vsi_set_primary_mac_addr(priv, saddr);
 if (err)
  return err;

 return 0;
}
