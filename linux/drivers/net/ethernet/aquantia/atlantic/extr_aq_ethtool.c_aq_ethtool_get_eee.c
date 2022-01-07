
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_eee {int supported; int advertised; int lp_advertised; int eee_enabled; int tx_lpi_enabled; int eee_active; } ;
struct TYPE_4__ {scalar_t__ eee_speeds; } ;
struct aq_nic_s {TYPE_2__ aq_nic_cfg; int fwreq_mutex; int aq_hw; TYPE_1__* aq_fw_ops; } ;
struct TYPE_3__ {int (* get_eee_rate ) (int ,int *,int *) ;} ;


 int EOPNOTSUPP ;
 void* eee_mask_to_ethtool_mask (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;
 int stub1 (int ,int *,int *) ;

__attribute__((used)) static int aq_ethtool_get_eee(struct net_device *ndev, struct ethtool_eee *eee)
{
 struct aq_nic_s *aq_nic = netdev_priv(ndev);
 u32 rate, supported_rates;
 int err = 0;

 if (!aq_nic->aq_fw_ops->get_eee_rate)
  return -EOPNOTSUPP;

 mutex_lock(&aq_nic->fwreq_mutex);
 err = aq_nic->aq_fw_ops->get_eee_rate(aq_nic->aq_hw, &rate,
           &supported_rates);
 mutex_unlock(&aq_nic->fwreq_mutex);
 if (err < 0)
  return err;

 eee->supported = eee_mask_to_ethtool_mask(supported_rates);

 if (aq_nic->aq_nic_cfg.eee_speeds)
  eee->advertised = eee->supported;

 eee->lp_advertised = eee_mask_to_ethtool_mask(rate);

 eee->eee_enabled = !!eee->advertised;

 eee->tx_lpi_enabled = eee->eee_enabled;
 if (eee->advertised & eee->lp_advertised)
  eee->eee_active = 1;

 return 0;
}
