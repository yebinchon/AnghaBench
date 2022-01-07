
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct ngene_channel {int state_lock; TYPE_3__* nextBuffer; } ;
struct TYPE_4__ {int Flags; } ;
struct TYPE_5__ {TYPE_1__ SR; } ;
struct TYPE_6__ {TYPE_2__ ngeneBuffer; } ;


 int msleep (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void flush_buffers(struct ngene_channel *chan)
{
 u8 val;

 do {
  msleep(1);
  spin_lock_irq(&chan->state_lock);
  val = chan->nextBuffer->ngeneBuffer.SR.Flags & 0x80;
  spin_unlock_irq(&chan->state_lock);
 } while (val);
}
