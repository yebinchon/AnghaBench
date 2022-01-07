
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sgiseeq_regs {int dummy; } ;
struct hpc3_ethregs {scalar_t__ tx_ctrl; scalar_t__ rx_ctrl; } ;


 int hpc3_eth_reset (struct hpc3_ethregs*) ;

__attribute__((used)) static inline void reset_hpc3_and_seeq(struct hpc3_ethregs *hregs,
           struct sgiseeq_regs *sregs)
{
 hregs->rx_ctrl = hregs->tx_ctrl = 0;
 hpc3_eth_reset(hregs);
}
