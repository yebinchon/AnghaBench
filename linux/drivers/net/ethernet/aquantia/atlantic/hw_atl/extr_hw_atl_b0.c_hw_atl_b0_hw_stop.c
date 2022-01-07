
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_B0_INT_MASK ;
 int aq_hw_err_from_flags (struct aq_hw_s*) ;
 int hw_atl_b0_hw_irq_disable (struct aq_hw_s*,int ) ;
 int hw_atl_rdm_rx_dma_desc_cache_init_done_get ;
 int hw_atl_rdm_rx_dma_desc_cache_init_tgl (struct aq_hw_s*) ;
 int readx_poll_timeout_atomic (int ,struct aq_hw_s*,int,int,unsigned int,unsigned int) ;

__attribute__((used)) static int hw_atl_b0_hw_stop(struct aq_hw_s *self)
{
 int err;
 u32 val;

 hw_atl_b0_hw_irq_disable(self, HW_ATL_B0_INT_MASK);




 hw_atl_rdm_rx_dma_desc_cache_init_tgl(self);

 err = aq_hw_err_from_flags(self);

 if (err)
  goto err_exit;

 readx_poll_timeout_atomic(hw_atl_rdm_rx_dma_desc_cache_init_done_get,
      self, val, val == 1, 1000U, 10000U);

err_exit:
 return err;
}
