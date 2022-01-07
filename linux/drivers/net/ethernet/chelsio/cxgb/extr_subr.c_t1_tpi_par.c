
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ regs; } ;
typedef TYPE_1__ adapter_t ;


 scalar_t__ A_TPI_PAR ;
 int V_TPIPAR (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void t1_tpi_par(adapter_t *adapter, u32 value)
{
 writel(V_TPIPAR(value), adapter->regs + A_TPI_PAR);
}
