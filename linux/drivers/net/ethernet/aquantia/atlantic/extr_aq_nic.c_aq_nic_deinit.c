
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct aq_vec_s {int dummy; } ;
struct aq_nic_s {unsigned int aq_vecs; scalar_t__ power_state; int fwreq_mutex; TYPE_3__* ndev; TYPE_4__* aq_hw; TYPE_2__* aq_fw_ops; struct aq_vec_s** aq_vec; } ;
struct TYPE_10__ {TYPE_1__* aq_nic_cfg; } ;
struct TYPE_9__ {int dev_addr; } ;
struct TYPE_8__ {int (* set_power ) (TYPE_4__*,scalar_t__,int ) ;int (* deinit ) (TYPE_4__*) ;} ;
struct TYPE_7__ {scalar_t__ wol; } ;


 scalar_t__ AQ_HW_POWER_STATE_D0 ;
 int aq_vec_deinit (struct aq_vec_s*) ;
 scalar_t__ likely (int (*) (TYPE_4__*)) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_4__*) ;
 int stub2 (TYPE_4__*,scalar_t__,int ) ;

void aq_nic_deinit(struct aq_nic_s *self)
{
 struct aq_vec_s *aq_vec = ((void*)0);
 unsigned int i = 0U;

 if (!self)
  goto err_exit;

 for (i = 0U, aq_vec = self->aq_vec[0];
  self->aq_vecs > i; ++i, aq_vec = self->aq_vec[i])
  aq_vec_deinit(aq_vec);

 if (likely(self->aq_fw_ops->deinit)) {
  mutex_lock(&self->fwreq_mutex);
  self->aq_fw_ops->deinit(self->aq_hw);
  mutex_unlock(&self->fwreq_mutex);
 }

 if (self->power_state != AQ_HW_POWER_STATE_D0 ||
     self->aq_hw->aq_nic_cfg->wol)
  if (likely(self->aq_fw_ops->set_power)) {
   mutex_lock(&self->fwreq_mutex);
   self->aq_fw_ops->set_power(self->aq_hw,
         self->power_state,
         self->ndev->dev_addr);
   mutex_unlock(&self->fwreq_mutex);
  }


err_exit:;
}
