
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct aq_hw_s {TYPE_1__* aq_fw_ops; } ;
struct TYPE_2__ {int (* set_state ) (struct aq_hw_s*,int ) ;} ;


 int HW_ATL_FLUSH () ;
 int MPI_RESET ;
 int aq_hw_err_from_flags (struct aq_hw_s*) ;
 int hw_atl_glb_glb_reg_res_dis_set (struct aq_hw_s*,unsigned int) ;
 int hw_atl_glb_soft_res_get ;
 int hw_atl_glb_soft_res_set (struct aq_hw_s*,int) ;
 int hw_atl_itr_irq_reg_res_dis_set (struct aq_hw_s*,unsigned int) ;
 int hw_atl_itr_res_irq_get ;
 int hw_atl_itr_res_irq_set (struct aq_hw_s*,unsigned int) ;
 int hw_atl_pci_pci_reg_res_dis_set (struct aq_hw_s*,unsigned int) ;
 int hw_atl_rx_rx_reg_res_dis_set (struct aq_hw_s*,unsigned int) ;
 int hw_atl_tx_tx_reg_res_dis_set (struct aq_hw_s*,unsigned int) ;
 int readx_poll_timeout_atomic (int ,struct aq_hw_s*,scalar_t__,int,unsigned int,unsigned int) ;
 int stub1 (struct aq_hw_s*,int ) ;

__attribute__((used)) static int hw_atl_a0_hw_reset(struct aq_hw_s *self)
{
 int err = 0;
 u32 val;

 hw_atl_glb_glb_reg_res_dis_set(self, 1U);
 hw_atl_pci_pci_reg_res_dis_set(self, 0U);
 hw_atl_rx_rx_reg_res_dis_set(self, 0U);
 hw_atl_tx_tx_reg_res_dis_set(self, 0U);

 HW_ATL_FLUSH();
 hw_atl_glb_soft_res_set(self, 1);


 err = readx_poll_timeout_atomic(hw_atl_glb_soft_res_get,
     self, val, val == 0,
     1000U, 10000U);
 if (err < 0)
  goto err_exit;

 hw_atl_itr_irq_reg_res_dis_set(self, 0U);
 hw_atl_itr_res_irq_set(self, 1U);


 err = readx_poll_timeout_atomic(hw_atl_itr_res_irq_get,
     self, val, val == 0,
     1000U, 10000U);
 if (err < 0)
  goto err_exit;

 self->aq_fw_ops->set_state(self, MPI_RESET);

 err = aq_hw_err_from_flags(self);

err_exit:
 return err;
}
