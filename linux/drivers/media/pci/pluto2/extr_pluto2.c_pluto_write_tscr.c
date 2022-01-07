
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pluto {int dummy; } ;


 int REG_TSCR ;
 int TSCR_ADEF ;
 int TS_DMA_PACKETS ;
 int pluto_writereg (struct pluto*,int ,int) ;

__attribute__((used)) static void pluto_write_tscr(struct pluto *pluto, u32 val)
{

 val &= ~TSCR_ADEF;
 val |= TS_DMA_PACKETS / 2;

 pluto_writereg(pluto, REG_TSCR, val);
}
