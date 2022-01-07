
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct rc_dev {struct iguanair* priv; } ;
struct iguanair {int carrier; int cycle_overhead; int lock; TYPE_1__* packet; } ;
struct TYPE_2__ {int busy7; int busy4; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iguanair_set_tx_carrier(struct rc_dev *dev, uint32_t carrier)
{
 struct iguanair *ir = dev->priv;

 if (carrier < 25000 || carrier > 150000)
  return -EINVAL;

 mutex_lock(&ir->lock);

 if (carrier != ir->carrier) {
  uint32_t cycles, fours, sevens;

  ir->carrier = carrier;

  cycles = DIV_ROUND_CLOSEST(24000000, carrier * 2) -
       ir->cycle_overhead;






  sevens = (4 - cycles) & 3;
  fours = (cycles - sevens * 7) / 4;
  ir->packet->busy7 = (4 - sevens) * 2;
  ir->packet->busy4 = 110 - fours;
 }

 mutex_unlock(&ir->lock);

 return 0;
}
