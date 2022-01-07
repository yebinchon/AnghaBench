
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct aq_nic_s {int dummy; } ;


 int aq_nic_set_mac (struct aq_nic_s*,struct net_device*) ;
 int eth_mac_addr (struct net_device*,void*) ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;

__attribute__((used)) static int aq_ndev_set_mac_address(struct net_device *ndev, void *addr)
{
 struct aq_nic_s *aq_nic = netdev_priv(ndev);
 int err = 0;

 err = eth_mac_addr(ndev, addr);
 if (err < 0)
  goto err_exit;
 err = aq_nic_set_mac(aq_nic, ndev);
 if (err < 0)
  goto err_exit;

err_exit:
 return err;
}
