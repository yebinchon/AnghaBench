
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m {int tx_in; size_t tx_out; void* tx_buf; } ;
struct device {int dummy; } ;


 int I2400M_TX_BUF_SIZE ;
 void* TAIL_FULL ;
 size_t __i2400m_tx_tail_room (struct i2400m*) ;
 int d_printf (int,struct device*,char*,size_t,size_t,...) ;
 struct device* i2400m_dev (struct i2400m*) ;

__attribute__((used)) static
void *i2400m_tx_fifo_push(struct i2400m *i2400m, size_t size,
     size_t padding, bool try_head)
{
 struct device *dev = i2400m_dev(i2400m);
 size_t room, tail_room, needed_size;
 void *ptr;

 needed_size = size + padding;
 room = I2400M_TX_BUF_SIZE - (i2400m->tx_in - i2400m->tx_out);
 if (room < needed_size) {
  d_printf(2, dev, "fifo push %zu/%zu: no space\n",
    size, padding);
  return ((void*)0);
 }

 tail_room = __i2400m_tx_tail_room(i2400m);
 if (!try_head && tail_room < needed_size) {
  if (room - tail_room >= needed_size) {
   d_printf(2, dev, "fifo push %zu/%zu: tail full\n",
     size, padding);
   return TAIL_FULL;
  } else {
   d_printf(2, dev, "fifo push %zu/%zu: no head space\n",
     size, padding);
   return ((void*)0);
  }
 }
 ptr = i2400m->tx_buf + i2400m->tx_in % I2400M_TX_BUF_SIZE;
 d_printf(2, dev, "fifo push %zu/%zu: at @%zu\n", size, padding,
   i2400m->tx_in % I2400M_TX_BUF_SIZE);
 i2400m->tx_in += size;
 return ptr;
}
