
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rc_dev {struct iguanair* priv; } ;
struct iguanair {unsigned int carrier; unsigned int bufsize; int tx_overflow; int lock; TYPE_2__* packet; } ;
struct TYPE_3__ {int cmd; int direction; scalar_t__ start; } ;
struct TYPE_4__ {unsigned int* payload; unsigned int length; TYPE_1__ header; } ;


 int CMD_SEND ;
 int DIR_OUT ;
 unsigned int DIV_ROUND_CLOSEST (unsigned int,int) ;
 int EINVAL ;
 int EOVERFLOW ;
 int iguanair_send (struct iguanair*,int) ;
 unsigned int min (unsigned int,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iguanair_tx(struct rc_dev *dev, unsigned *txbuf, unsigned count)
{
 struct iguanair *ir = dev->priv;
 unsigned int i, size, p, periods;
 int rc;

 mutex_lock(&ir->lock);


 for (i = size = 0; i < count; i++) {
  periods = DIV_ROUND_CLOSEST(txbuf[i] * ir->carrier, 1000000);
  while (periods) {
   p = min(periods, 127u);
   if (size >= ir->bufsize) {
    rc = -EINVAL;
    goto out;
   }
   ir->packet->payload[size++] = p | ((i & 1) ? 0x80 : 0);
   periods -= p;
  }
 }

 ir->packet->header.start = 0;
 ir->packet->header.direction = DIR_OUT;
 ir->packet->header.cmd = CMD_SEND;
 ir->packet->length = size;

 ir->tx_overflow = 0;

 rc = iguanair_send(ir, sizeof(*ir->packet) + size);

 if (rc == 0 && ir->tx_overflow)
  rc = -EOVERFLOW;

out:
 mutex_unlock(&ir->lock);

 return rc ? rc : count;
}
