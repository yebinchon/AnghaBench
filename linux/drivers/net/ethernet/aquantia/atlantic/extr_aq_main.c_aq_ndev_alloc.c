
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * ethtool_ops; int * netdev_ops; } ;
struct aq_nic_s {struct net_device* ndev; } ;


 int AQ_CFG_VECS_MAX ;
 struct net_device* alloc_etherdev_mq (int,int ) ;
 int aq_ethtool_ops ;
 int aq_ndev_ops ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;

struct net_device *aq_ndev_alloc(void)
{
 struct net_device *ndev = ((void*)0);
 struct aq_nic_s *aq_nic = ((void*)0);

 ndev = alloc_etherdev_mq(sizeof(struct aq_nic_s), AQ_CFG_VECS_MAX);
 if (!ndev)
  return ((void*)0);

 aq_nic = netdev_priv(ndev);
 aq_nic->ndev = ndev;
 ndev->netdev_ops = &aq_ndev_ops;
 ndev->ethtool_ops = &aq_ethtool_ops;

 return ndev;
}
