
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct rtl8169_private {scalar_t__ counters_phys_addr; } ;
typedef scalar_t__ dma_addr_t ;


 int CounterAddrHigh ;
 int CounterAddrLow ;
 int DMA_BIT_MASK (int) ;
 int RTL_R32 (struct rtl8169_private*,int ) ;
 int RTL_W32 (struct rtl8169_private*,int ,int) ;
 int rtl_counters_cond ;
 int rtl_udelay_loop_wait_low (struct rtl8169_private*,int *,int,int) ;

__attribute__((used)) static bool rtl8169_do_counters(struct rtl8169_private *tp, u32 counter_cmd)
{
 dma_addr_t paddr = tp->counters_phys_addr;
 u32 cmd;

 RTL_W32(tp, CounterAddrHigh, (u64)paddr >> 32);
 RTL_R32(tp, CounterAddrHigh);
 cmd = (u64)paddr & DMA_BIT_MASK(32);
 RTL_W32(tp, CounterAddrLow, cmd);
 RTL_W32(tp, CounterAddrLow, cmd | counter_cmd);

 return rtl_udelay_loop_wait_low(tp, &rtl_counters_cond, 10, 1000);
}
