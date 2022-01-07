
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pluto {int dummy; } ;


 int MISC_ALED ;
 int PID0_END ;
 int REG_MISC ;
 int REG_PIDn (int ) ;
 int pluto_dma_map (struct pluto*) ;
 int pluto_enable_irqs (struct pluto*) ;
 int pluto_reset_frontend (struct pluto*,int) ;
 int pluto_reset_ts (struct pluto*,int) ;
 int pluto_rw (struct pluto*,int ,int ,int ) ;
 int pluto_set_dma_addr (struct pluto*) ;

__attribute__((used)) static int pluto_hw_init(struct pluto *pluto)
{
 pluto_reset_frontend(pluto, 1);


 pluto_rw(pluto, REG_MISC, MISC_ALED, MISC_ALED);





 pluto_rw(pluto, REG_PIDn(0), PID0_END, 0);


 pluto_dma_map(pluto);
 pluto_set_dma_addr(pluto);


 pluto_enable_irqs(pluto);


 pluto_reset_ts(pluto, 1);

 return 0;
}
