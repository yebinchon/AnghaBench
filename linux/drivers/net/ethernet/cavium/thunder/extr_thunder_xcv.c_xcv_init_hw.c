
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ reg_base; } ;


 int CLKRX_BYP ;
 int CLK_RESET ;
 int COMP_EN ;
 int DLL_RESET ;
 int PORT_EN ;
 scalar_t__ XCV_DLL_CTL ;
 scalar_t__ XCV_RESET ;
 int msleep (int) ;
 int readq_relaxed (scalar_t__) ;
 int writeq_relaxed (int,scalar_t__) ;
 TYPE_1__* xcv ;

void xcv_init_hw(void)
{
 u64 cfg;


 cfg = readq_relaxed(xcv->reg_base + XCV_RESET);
 cfg &= ~DLL_RESET;
 writeq_relaxed(cfg, xcv->reg_base + XCV_RESET);


 cfg = readq_relaxed(xcv->reg_base + XCV_RESET);
 cfg &= ~CLK_RESET;
 writeq_relaxed(cfg, xcv->reg_base + XCV_RESET);

 msleep(1);




 cfg = readq_relaxed(xcv->reg_base + XCV_DLL_CTL);
 cfg &= ~0xFF03;
 cfg |= CLKRX_BYP;
 writeq_relaxed(cfg, xcv->reg_base + XCV_DLL_CTL);




 cfg = readq_relaxed(xcv->reg_base + XCV_RESET);
 cfg |= COMP_EN;
 writeq_relaxed(cfg, xcv->reg_base + XCV_RESET);
 readq_relaxed(xcv->reg_base + XCV_RESET);

 msleep(10);


 cfg = readq_relaxed(xcv->reg_base + XCV_RESET);
 cfg |= PORT_EN;
 writeq_relaxed(cfg, xcv->reg_base + XCV_RESET);

 cfg = readq_relaxed(xcv->reg_base + XCV_RESET);
 cfg |= CLK_RESET;
 writeq_relaxed(cfg, xcv->reg_base + XCV_RESET);
}
