
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_host_sds_ring {int napi; } ;
struct qlcnic_hardware_context {scalar_t__ diag_test; int diag_cnt; } ;
struct qlcnic_adapter {TYPE_1__* recv_ctx; int state; struct qlcnic_hardware_context* ahw; } ;
typedef scalar_t__ irqreturn_t ;
struct TYPE_2__ {struct qlcnic_host_sds_ring* sds_rings; } ;


 scalar_t__ IRQ_HANDLED ;
 scalar_t__ IRQ_NONE ;
 scalar_t__ QLCNIC_INTERRUPT_TEST ;
 int __QLCNIC_DEV_UP ;
 int napi_schedule (int *) ;
 scalar_t__ qlcnic_83xx_clear_legacy_intr (struct qlcnic_adapter*) ;
 int qlcnic_83xx_enable_legacy_msix_mbx_intr (struct qlcnic_adapter*) ;
 int qlcnic_83xx_poll_process_aen (struct qlcnic_adapter*) ;
 int test_bit (int ,int *) ;

irqreturn_t qlcnic_83xx_intr(int irq, void *data)
{
 struct qlcnic_adapter *adapter = data;
 struct qlcnic_host_sds_ring *sds_ring;
 struct qlcnic_hardware_context *ahw = adapter->ahw;

 if (qlcnic_83xx_clear_legacy_intr(adapter) == IRQ_NONE)
  return IRQ_NONE;

 qlcnic_83xx_poll_process_aen(adapter);

 if (ahw->diag_test) {
  if (ahw->diag_test == QLCNIC_INTERRUPT_TEST)
   ahw->diag_cnt++;
  qlcnic_83xx_enable_legacy_msix_mbx_intr(adapter);
  return IRQ_HANDLED;
 }

 if (!test_bit(__QLCNIC_DEV_UP, &adapter->state)) {
  qlcnic_83xx_enable_legacy_msix_mbx_intr(adapter);
 } else {
  sds_ring = &adapter->recv_ctx->sds_rings[0];
  napi_schedule(&sds_ring->napi);
 }

 return IRQ_HANDLED;
}
