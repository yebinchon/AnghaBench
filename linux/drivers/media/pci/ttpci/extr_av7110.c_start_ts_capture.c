
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct av7110 {int feeding1; int dev; scalar_t__ ttbp; scalar_t__ grabbing; } ;


 int MASK_04 ;
 int MASK_10 ;
 int MASK_20 ;
 int MC1 ;
 int SAA7146_IER_ENABLE (int ,int ) ;
 int SAA7146_ISR_CLEAR (int ,int ) ;
 unsigned int TS_HEIGHT ;
 unsigned int TS_WIDTH ;
 int dprintk (int,char*,struct av7110*) ;
 int memset (scalar_t__,int,unsigned int) ;
 int saa7146_write (int ,int ,int) ;

__attribute__((used)) static int start_ts_capture(struct av7110 *budget)
{
 unsigned y;

 dprintk(2, "budget: %p\n", budget);

 if (budget->feeding1)
  return ++budget->feeding1;
 for (y = 0; y < TS_HEIGHT; y++)
  memset(budget->grabbing + y * TS_WIDTH, 0x00, TS_WIDTH);
 budget->ttbp = 0;
 SAA7146_ISR_CLEAR(budget->dev, MASK_10);
 SAA7146_IER_ENABLE(budget->dev, MASK_10);
 saa7146_write(budget->dev, MC1, (MASK_04 | MASK_20));
 return ++budget->feeding1;
}
