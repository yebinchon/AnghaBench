
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int tx_collisions; int tx_late_collisions; int tx_excessive_collisions; int tx_deferred; int tx_first_collisions; int tx_underflows; int tx_max_pkt_errs; int rcvd_pkts_dropped; int rx_overflows; int rx_crc_errs; int rx_other_errs; int rx_length_errs; int rx_align_errs; int rx_code_violations; } ;
struct et131x_adapter {TYPE_3__ stats; TYPE_2__* regs; } ;
struct TYPE_4__ {int carry_reg2; int carry_reg1; } ;
struct TYPE_5__ {TYPE_1__ macstat; } ;


 scalar_t__ COUNTER_WRAP_12_BIT ;
 scalar_t__ COUNTER_WRAP_16_BIT ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void et1310_handle_macstat_interrupt(struct et131x_adapter *adapter)
{
 u32 carry_reg1;
 u32 carry_reg2;




 carry_reg1 = readl(&adapter->regs->macstat.carry_reg1);
 carry_reg2 = readl(&adapter->regs->macstat.carry_reg2);

 writel(carry_reg1, &adapter->regs->macstat.carry_reg1);
 writel(carry_reg2, &adapter->regs->macstat.carry_reg2);







 if (carry_reg1 & (1 << 14))
  adapter->stats.rx_code_violations += COUNTER_WRAP_16_BIT;
 if (carry_reg1 & (1 << 8))
  adapter->stats.rx_align_errs += COUNTER_WRAP_12_BIT;
 if (carry_reg1 & (1 << 7))
  adapter->stats.rx_length_errs += COUNTER_WRAP_16_BIT;
 if (carry_reg1 & (1 << 2))
  adapter->stats.rx_other_errs += COUNTER_WRAP_16_BIT;
 if (carry_reg1 & (1 << 6))
  adapter->stats.rx_crc_errs += COUNTER_WRAP_16_BIT;
 if (carry_reg1 & (1 << 3))
  adapter->stats.rx_overflows += COUNTER_WRAP_16_BIT;
 if (carry_reg1 & (1 << 0))
  adapter->stats.rcvd_pkts_dropped += COUNTER_WRAP_16_BIT;
 if (carry_reg2 & (1 << 16))
  adapter->stats.tx_max_pkt_errs += COUNTER_WRAP_12_BIT;
 if (carry_reg2 & (1 << 15))
  adapter->stats.tx_underflows += COUNTER_WRAP_12_BIT;
 if (carry_reg2 & (1 << 6))
  adapter->stats.tx_first_collisions += COUNTER_WRAP_12_BIT;
 if (carry_reg2 & (1 << 8))
  adapter->stats.tx_deferred += COUNTER_WRAP_12_BIT;
 if (carry_reg2 & (1 << 5))
  adapter->stats.tx_excessive_collisions += COUNTER_WRAP_12_BIT;
 if (carry_reg2 & (1 << 4))
  adapter->stats.tx_late_collisions += COUNTER_WRAP_12_BIT;
 if (carry_reg2 & (1 << 2))
  adapter->stats.tx_collisions += COUNTER_WRAP_12_BIT;
}
