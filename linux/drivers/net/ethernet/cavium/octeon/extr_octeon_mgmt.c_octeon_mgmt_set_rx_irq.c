
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ithena; } ;
union cvmx_mixx_intena {int u64; TYPE_1__ s; } ;
struct octeon_mgmt {int lock; scalar_t__ mix; } ;


 scalar_t__ MIX_INTENA ;
 int cvmx_read_csr (scalar_t__) ;
 int cvmx_write_csr (scalar_t__,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void octeon_mgmt_set_rx_irq(struct octeon_mgmt *p, int enable)
{
 union cvmx_mixx_intena mix_intena;
 unsigned long flags;

 spin_lock_irqsave(&p->lock, flags);
 mix_intena.u64 = cvmx_read_csr(p->mix + MIX_INTENA);
 mix_intena.s.ithena = enable ? 1 : 0;
 cvmx_write_csr(p->mix + MIX_INTENA, mix_intena.u64);
 spin_unlock_irqrestore(&p->lock, flags);
}
