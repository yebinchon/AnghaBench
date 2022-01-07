
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cosa_data {int name; int num; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned int SR_CMD_FROM_SRP_MASK ;



 unsigned int cosa_getstatus (struct cosa_data*) ;
 int debug_status_in (struct cosa_data*,unsigned int) ;
 int eot_interrupt (struct cosa_data*,unsigned int) ;
 int pr_info (char*,int ,...) ;
 int rx_interrupt (struct cosa_data*,unsigned int) ;
 int tx_interrupt (struct cosa_data*,unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static irqreturn_t cosa_interrupt(int irq, void *cosa_)
{
 unsigned status;
 int count = 0;
 struct cosa_data *cosa = cosa_;
again:
 status = cosa_getstatus(cosa);






 switch (status & SR_CMD_FROM_SRP_MASK) {
 case 130:
  tx_interrupt(cosa, status);
  break;
 case 128:
  rx_interrupt(cosa, status);
  break;
 case 129:
  eot_interrupt(cosa, status);
  break;
 default:

  if (count++ < 100) {
   udelay(100);
   goto again;
  }
  pr_info("cosa%d: unknown status 0x%02x in IRQ after %d retries\n",
   cosa->num, status & 0xff, count);
 }







 return IRQ_HANDLED;
}
