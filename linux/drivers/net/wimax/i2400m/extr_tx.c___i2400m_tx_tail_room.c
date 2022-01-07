
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m {size_t tx_in; } ;


 size_t I2400M_TX_BUF_SIZE ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline
size_t __i2400m_tx_tail_room(struct i2400m *i2400m)
{
 size_t tail_room;
 size_t tx_in;

 if (unlikely(i2400m->tx_in == 0))
  return I2400M_TX_BUF_SIZE;
 tx_in = i2400m->tx_in % I2400M_TX_BUF_SIZE;
 tail_room = I2400M_TX_BUF_SIZE - tx_in;
 tail_room %= I2400M_TX_BUF_SIZE;
 return tail_room;
}
