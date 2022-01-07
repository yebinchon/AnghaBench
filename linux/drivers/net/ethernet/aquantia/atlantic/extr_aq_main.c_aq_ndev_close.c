
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct aq_nic_s {int dummy; } ;


 int aq_nic_deinit (struct aq_nic_s*) ;
 int aq_nic_stop (struct aq_nic_s*) ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;

__attribute__((used)) static int aq_ndev_close(struct net_device *ndev)
{
 int err = 0;
 struct aq_nic_s *aq_nic = netdev_priv(ndev);

 err = aq_nic_stop(aq_nic);
 if (err < 0)
  goto err_exit;
 aq_nic_deinit(aq_nic);

err_exit:
 return err;
}
