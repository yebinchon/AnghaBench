
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aq_hw_s {TYPE_1__* aq_nic_cfg; } ;
struct TYPE_2__ {int aq_hw_caps; } ;


 int hw_atl_utils_fw_rpc_init (struct aq_hw_s*) ;
 int hw_atl_utils_init_ucp (struct aq_hw_s*,int ) ;

__attribute__((used)) static int hw_atl_utils_mpi_create(struct aq_hw_s *self)
{
 int err = 0;

 err = hw_atl_utils_init_ucp(self, self->aq_nic_cfg->aq_hw_caps);
 if (err < 0)
  goto err_exit;

 err = hw_atl_utils_fw_rpc_init(self);
 if (err < 0)
  goto err_exit;

err_exit:
 return err;
}
