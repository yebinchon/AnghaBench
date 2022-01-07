
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct aq_nic_s {size_t aq_vecs; TYPE_1__* ndev; int * aq_vec; int fwreq_mutex; int aq_hw; TYPE_4__* aq_fw_ops; } ;
struct TYPE_9__ {size_t vecs; } ;
struct TYPE_8__ {int (* get_mac_permanent ) (int ,int ) ;} ;
struct TYPE_7__ {int dev_addr; } ;


 int * AQ_CFG_MAC_ADDR_PERMANENT ;
 int EINVAL ;
 int ENOMEM ;
 TYPE_5__* aq_nic_get_cfg (struct aq_nic_s*) ;
 int aq_vec_alloc (struct aq_nic_s*,size_t,TYPE_5__*) ;
 int ether_addr_copy (int ,int *) ;
 int hw_atl_utils_initfw (int ,TYPE_4__**) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_carrier_off (TYPE_1__*) ;
 int netif_tx_disable (TYPE_1__*) ;
 int register_netdev (TYPE_1__*) ;
 int stub1 (int ,int ) ;

int aq_nic_ndev_register(struct aq_nic_s *self)
{
 int err = 0;

 if (!self->ndev) {
  err = -EINVAL;
  goto err_exit;
 }

 err = hw_atl_utils_initfw(self->aq_hw, &self->aq_fw_ops);
 if (err)
  goto err_exit;

 mutex_lock(&self->fwreq_mutex);
 err = self->aq_fw_ops->get_mac_permanent(self->aq_hw,
       self->ndev->dev_addr);
 mutex_unlock(&self->fwreq_mutex);
 if (err)
  goto err_exit;
 for (self->aq_vecs = 0; self->aq_vecs < aq_nic_get_cfg(self)->vecs;
      self->aq_vecs++) {
  self->aq_vec[self->aq_vecs] =
      aq_vec_alloc(self, self->aq_vecs, aq_nic_get_cfg(self));
  if (!self->aq_vec[self->aq_vecs]) {
   err = -ENOMEM;
   goto err_exit;
  }
 }

 netif_carrier_off(self->ndev);

 netif_tx_disable(self->ndev);

 err = register_netdev(self->ndev);
 if (err)
  goto err_exit;

err_exit:
 return err;
}
