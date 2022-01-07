
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* process_interrupt_regs ) (struct octeon_device*) ;int (* enable_interrupt ) (struct octeon_device*,int ) ;int (* disable_interrupt ) (struct octeon_device*,int ) ;} ;
struct octeon_device {TYPE_1__ fn_list; int status; } ;
typedef scalar_t__ irqreturn_t ;


 scalar_t__ IRQ_HANDLED ;
 int OCTEON_ALL_INTR ;
 scalar_t__ OCT_DEV_IN_RESET ;
 scalar_t__ atomic_read (int *) ;
 int liquidio_schedule_droq_pkt_handlers (struct octeon_device*) ;
 int stub1 (struct octeon_device*,int ) ;
 scalar_t__ stub2 (struct octeon_device*) ;
 int stub3 (struct octeon_device*,int ) ;

__attribute__((used)) static
irqreturn_t liquidio_legacy_intr_handler(int irq __attribute__((unused)),
      void *dev)
{
 struct octeon_device *oct = (struct octeon_device *)dev;
 irqreturn_t ret;


 oct->fn_list.disable_interrupt(oct, OCTEON_ALL_INTR);

 ret = oct->fn_list.process_interrupt_regs(oct);

 if (ret == IRQ_HANDLED)
  liquidio_schedule_droq_pkt_handlers(oct);


 if (!(atomic_read(&oct->status) == OCT_DEV_IN_RESET))
  oct->fn_list.enable_interrupt(oct, OCTEON_ALL_INTR);

 return ret;
}
