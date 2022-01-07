
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ethtool_regs {int version; } ;
struct TYPE_4__ {int aq_hw_caps; } ;
struct aq_nic_s {TYPE_2__ aq_nic_cfg; int aq_hw; TYPE_1__* aq_hw_ops; } ;
struct TYPE_3__ {int (* hw_get_regs ) (int ,int ,int *) ;} ;


 int stub1 (int ,int ,int *) ;

int aq_nic_get_regs(struct aq_nic_s *self, struct ethtool_regs *regs, void *p)
{
 u32 *regs_buff = p;
 int err = 0;

 regs->version = 1;

 err = self->aq_hw_ops->hw_get_regs(self->aq_hw,
        self->aq_nic_cfg.aq_hw_caps,
        regs_buff);
 if (err < 0)
  goto err_exit;

err_exit:
 return err;
}
