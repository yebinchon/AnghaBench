
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct aq_nic_s {int fwreq_mutex; int aq_hw; TYPE_1__* aq_fw_ops; } ;
struct TYPE_2__ {int (* renegotiate ) (int ) ;} ;


 int EOPNOTSUPP ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int stub1 (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int aq_ethtool_nway_reset(struct net_device *ndev)
{
 struct aq_nic_s *aq_nic = netdev_priv(ndev);
 int err = 0;

 if (unlikely(!aq_nic->aq_fw_ops->renegotiate))
  return -EOPNOTSUPP;

 if (netif_running(ndev)) {
  mutex_lock(&aq_nic->fwreq_mutex);
  err = aq_nic->aq_fw_ops->renegotiate(aq_nic->aq_hw);
  mutex_unlock(&aq_nic->fwreq_mutex);
 }

 return err;
}
