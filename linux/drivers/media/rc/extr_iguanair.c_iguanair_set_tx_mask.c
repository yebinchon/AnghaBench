
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct rc_dev {struct iguanair* priv; } ;
struct iguanair {int lock; TYPE_1__* packet; } ;
struct TYPE_2__ {int channels; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iguanair_set_tx_mask(struct rc_dev *dev, uint32_t mask)
{
 struct iguanair *ir = dev->priv;

 if (mask > 15)
  return 4;

 mutex_lock(&ir->lock);
 ir->packet->channels = mask << 4;
 mutex_unlock(&ir->lock);

 return 0;
}
