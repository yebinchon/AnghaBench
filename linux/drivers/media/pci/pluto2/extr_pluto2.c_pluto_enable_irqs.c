
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pluto {int dummy; } ;


 int REG_TSCR ;
 int TSCR_DEM ;
 int TSCR_IACK ;
 int TSCR_MSKA ;
 int TSCR_MSKL ;
 int TSCR_MSKO ;
 int pluto_readreg (struct pluto*,int ) ;
 int pluto_write_tscr (struct pluto*,int) ;

__attribute__((used)) static void pluto_enable_irqs(struct pluto *pluto)
{
 u32 val = pluto_readreg(pluto, REG_TSCR);


 val |= (TSCR_MSKA | TSCR_MSKL);

 val &= ~(TSCR_DEM | TSCR_MSKO);

 val |= TSCR_IACK;

 pluto_write_tscr(pluto, val);
}
