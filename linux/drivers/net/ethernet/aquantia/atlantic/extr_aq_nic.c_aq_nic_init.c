
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct aq_vec_s {int dummy; } ;
struct aq_nic_s {unsigned int aq_vecs; int ndev; int aq_hw; TYPE_1__* aq_hw_ops; struct aq_vec_s** aq_vec; int fwreq_mutex; int power_state; } ;
struct TYPE_4__ {int dev_addr; } ;
struct TYPE_3__ {int (* hw_reset ) (int ) ;int (* hw_init ) (int ,int ) ;} ;


 int AQ_HW_POWER_STATE_D0 ;
 TYPE_2__* aq_nic_get_ndev (struct aq_nic_s*) ;
 int aq_vec_init (struct aq_vec_s*,TYPE_1__*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_carrier_off (int ) ;
 int stub1 (int ) ;
 int stub2 (int ,int ) ;

int aq_nic_init(struct aq_nic_s *self)
{
 struct aq_vec_s *aq_vec = ((void*)0);
 int err = 0;
 unsigned int i = 0U;

 self->power_state = AQ_HW_POWER_STATE_D0;
 mutex_lock(&self->fwreq_mutex);
 err = self->aq_hw_ops->hw_reset(self->aq_hw);
 mutex_unlock(&self->fwreq_mutex);
 if (err < 0)
  goto err_exit;

 err = self->aq_hw_ops->hw_init(self->aq_hw,
           aq_nic_get_ndev(self)->dev_addr);
 if (err < 0)
  goto err_exit;

 for (i = 0U, aq_vec = self->aq_vec[0];
  self->aq_vecs > i; ++i, aq_vec = self->aq_vec[i])
  aq_vec_init(aq_vec, self->aq_hw_ops, self->aq_hw);

 netif_carrier_off(self->ndev);

err_exit:
 return err;
}
