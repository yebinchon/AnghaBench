
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct petp {TYPE_1__* adapter; } ;
struct TYPE_2__ {scalar_t__ regs; } ;


 scalar_t__ A_TP_GLOBAL_CONFIG ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void set_csum_offload(struct petp *tp, u32 csum_bit, int enable)
{
 u32 val = readl(tp->adapter->regs + A_TP_GLOBAL_CONFIG);

 if (enable)
  val |= csum_bit;
 else
  val &= ~csum_bit;
 writel(val, tp->adapter->regs + A_TP_GLOBAL_CONFIG);
}
