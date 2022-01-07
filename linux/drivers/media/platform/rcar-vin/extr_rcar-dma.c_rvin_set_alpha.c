
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pixelformat; } ;
struct rvin_dev {unsigned int alpha; scalar_t__ state; int qlock; TYPE_1__ format; } ;


 scalar_t__ STOPPED ;


 int VNDMR_A8BIT (int) ;
 int VNDMR_A8BIT_MASK ;
 int VNDMR_ABIT ;
 int VNDMR_REG ;
 int rvin_read (struct rvin_dev*,int ) ;
 int rvin_write (struct rvin_dev*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void rvin_set_alpha(struct rvin_dev *vin, unsigned int alpha)
{
 unsigned long flags;
 u32 dmr;

 spin_lock_irqsave(&vin->qlock, flags);

 vin->alpha = alpha;

 if (vin->state == STOPPED)
  goto out;

 switch (vin->format.pixelformat) {
 case 128:
  dmr = rvin_read(vin, VNDMR_REG) & ~VNDMR_ABIT;
  if (vin->alpha)
   dmr |= VNDMR_ABIT;
  break;
 case 129:
  dmr = rvin_read(vin, VNDMR_REG) & ~VNDMR_A8BIT_MASK;
  dmr |= VNDMR_A8BIT(vin->alpha);
  break;
 default:
  goto out;
 }

 rvin_write(vin, dmr, VNDMR_REG);
out:
 spin_unlock_irqrestore(&vin->qlock, flags);
}
