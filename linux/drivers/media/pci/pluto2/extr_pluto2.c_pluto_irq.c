
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pluto {int dead; scalar_t__ overflow; TYPE_1__* pdev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int REG_TSCR ;
 int TSCR_DE ;
 int TSCR_IACK ;
 int TSCR_NBPACKETS ;
 int TSCR_OVR ;
 int dev_err (int *,char*,...) ;
 int pluto_dma_end (struct pluto*,int) ;
 int pluto_readreg (struct pluto*,int ) ;
 int pluto_reset_ts (struct pluto*,int) ;
 int pluto_write_tscr (struct pluto*,int) ;

__attribute__((used)) static irqreturn_t pluto_irq(int irq, void *dev_id)
{
 struct pluto *pluto = dev_id;
 u32 tscr;


 tscr = pluto_readreg(pluto, REG_TSCR);
 if (!(tscr & (TSCR_DE | TSCR_OVR)))
  return IRQ_NONE;

 if (tscr == 0xffffffff) {
  if (pluto->dead == 0)
   dev_err(&pluto->pdev->dev, "card has hung or been ejected.\n");

  pluto->dead = 1;
  return IRQ_HANDLED;
 }


 if (tscr & TSCR_DE) {
  pluto_dma_end(pluto, (tscr & TSCR_NBPACKETS) >> 24);

  if (tscr & TSCR_OVR)
   pluto->overflow++;
  if (pluto->overflow) {
   dev_err(&pluto->pdev->dev, "overflow irq (%d)\n",
     pluto->overflow);
   pluto_reset_ts(pluto, 1);
   pluto->overflow = 0;
  }
 } else if (tscr & TSCR_OVR) {
  pluto->overflow++;
 }


 pluto_write_tscr(pluto, tscr | TSCR_IACK);

 return IRQ_HANDLED;
}
