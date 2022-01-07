
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ orthresh; scalar_t__ irthresh; } ;
union cvmx_mixx_isr {TYPE_1__ s; int u64; } ;
struct octeon_mgmt {int tx_clean_tasklet; int napi; scalar_t__ mix; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ MIX_ISR ;
 int cvmx_read_csr (scalar_t__) ;
 int cvmx_write_csr (scalar_t__,int ) ;
 int napi_schedule (int *) ;
 struct octeon_mgmt* netdev_priv (struct net_device*) ;
 int octeon_mgmt_disable_rx_irq (struct octeon_mgmt*) ;
 int octeon_mgmt_disable_tx_irq (struct octeon_mgmt*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t octeon_mgmt_interrupt(int cpl, void *dev_id)
{
 struct net_device *netdev = dev_id;
 struct octeon_mgmt *p = netdev_priv(netdev);
 union cvmx_mixx_isr mixx_isr;

 mixx_isr.u64 = cvmx_read_csr(p->mix + MIX_ISR);


 cvmx_write_csr(p->mix + MIX_ISR, mixx_isr.u64);
 cvmx_read_csr(p->mix + MIX_ISR);

 if (mixx_isr.s.irthresh) {
  octeon_mgmt_disable_rx_irq(p);
  napi_schedule(&p->napi);
 }
 if (mixx_isr.s.orthresh) {
  octeon_mgmt_disable_tx_irq(p);
  tasklet_schedule(&p->tx_clean_tasklet);
 }

 return IRQ_HANDLED;
}
