
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pluto {int dummy; } ;


 int MISC_ALED ;
 int MISC_LED0 ;
 int MISC_LED1 ;
 int REG_MISC ;
 int pluto_disable_irqs (struct pluto*) ;
 int pluto_dma_unmap (struct pluto*) ;
 int pluto_reset_frontend (struct pluto*,int ) ;
 int pluto_reset_ts (struct pluto*,int ) ;
 int pluto_rw (struct pluto*,int ,int,int) ;

__attribute__((used)) static void pluto_hw_exit(struct pluto *pluto)
{

 pluto_disable_irqs(pluto);

 pluto_reset_ts(pluto, 0);


 pluto_rw(pluto, REG_MISC, MISC_ALED | MISC_LED1 | MISC_LED0, MISC_LED1);


 pluto_dma_unmap(pluto);

 pluto_reset_frontend(pluto, 0);
}
