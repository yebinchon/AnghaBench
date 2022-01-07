
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {unsigned int timer_quantum_ns; unsigned int timer_max_ns; int net_dev; } ;
typedef int efx_dword_t ;


 scalar_t__ EFX_EF10_WORKAROUND_35388 (struct efx_nic*) ;
 scalar_t__ EFX_EF10_WORKAROUND_61265 (struct efx_nic*) ;
 int GET_EVQ_TMR_PROPERTIES_OUT_BUG35388_TMR_MAX_COUNT ;
 int GET_EVQ_TMR_PROPERTIES_OUT_BUG35388_TMR_NS_PER_COUNT ;
 int GET_EVQ_TMR_PROPERTIES_OUT_MCDI_TMR_MAX_NS ;
 int GET_EVQ_TMR_PROPERTIES_OUT_MCDI_TMR_STEP_NS ;
 int GET_EVQ_TMR_PROPERTIES_OUT_TMR_REG_MAX_COUNT ;
 int GET_EVQ_TMR_PROPERTIES_OUT_TMR_REG_NS_PER_COUNT ;
 void* MCDI_DWORD (int const*,int ) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,unsigned int,unsigned int) ;
 int probe ;

__attribute__((used)) static void efx_ef10_process_timer_config(struct efx_nic *efx,
       const efx_dword_t *data)
{
 unsigned int max_count;

 if (EFX_EF10_WORKAROUND_61265(efx)) {
  efx->timer_quantum_ns = MCDI_DWORD(data,
   GET_EVQ_TMR_PROPERTIES_OUT_MCDI_TMR_STEP_NS);
  efx->timer_max_ns = MCDI_DWORD(data,
   GET_EVQ_TMR_PROPERTIES_OUT_MCDI_TMR_MAX_NS);
 } else if (EFX_EF10_WORKAROUND_35388(efx)) {
  efx->timer_quantum_ns = MCDI_DWORD(data,
   GET_EVQ_TMR_PROPERTIES_OUT_BUG35388_TMR_NS_PER_COUNT);
  max_count = MCDI_DWORD(data,
   GET_EVQ_TMR_PROPERTIES_OUT_BUG35388_TMR_MAX_COUNT);
  efx->timer_max_ns = max_count * efx->timer_quantum_ns;
 } else {
  efx->timer_quantum_ns = MCDI_DWORD(data,
   GET_EVQ_TMR_PROPERTIES_OUT_TMR_REG_NS_PER_COUNT);
  max_count = MCDI_DWORD(data,
   GET_EVQ_TMR_PROPERTIES_OUT_TMR_REG_MAX_COUNT);
  efx->timer_max_ns = max_count * efx->timer_quantum_ns;
 }

 netif_dbg(efx, probe, efx->net_dev,
    "got timer properties from MC: quantum %u ns; max %u ns\n",
    efx->timer_quantum_ns, efx->timer_max_ns);
}
