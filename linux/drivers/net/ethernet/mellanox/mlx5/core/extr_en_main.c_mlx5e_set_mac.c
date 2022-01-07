
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;
struct mlx5e_priv {int set_rx_mode_work; int wq; } ;


 int EADDRNOTAVAIL ;
 int ether_addr_copy (int ,int ) ;
 int is_valid_ether_addr (int ) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int netif_addr_lock_bh (struct net_device*) ;
 int netif_addr_unlock_bh (struct net_device*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int mlx5e_set_mac(struct net_device *netdev, void *addr)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 struct sockaddr *saddr = addr;

 if (!is_valid_ether_addr(saddr->sa_data))
  return -EADDRNOTAVAIL;

 netif_addr_lock_bh(netdev);
 ether_addr_copy(netdev->dev_addr, saddr->sa_data);
 netif_addr_unlock_bh(netdev);

 queue_work(priv->wq, &priv->set_rx_mode_work);

 return 0;
}
