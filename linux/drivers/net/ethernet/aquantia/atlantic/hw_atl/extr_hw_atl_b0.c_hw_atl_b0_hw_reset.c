
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aq_hw_s {TYPE_1__* aq_fw_ops; } ;
struct TYPE_2__ {int (* set_state ) (struct aq_hw_s*,int ) ;} ;


 int MPI_RESET ;
 int aq_hw_err_from_flags (struct aq_hw_s*) ;
 int hw_atl_utils_soft_reset (struct aq_hw_s*) ;
 int stub1 (struct aq_hw_s*,int ) ;

__attribute__((used)) static int hw_atl_b0_hw_reset(struct aq_hw_s *self)
{
 int err = 0;

 err = hw_atl_utils_soft_reset(self);
 if (err)
  return err;

 self->aq_fw_ops->set_state(self, MPI_RESET);

 err = aq_hw_err_from_flags(self);

 return err;
}
