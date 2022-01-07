
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m_roq {int dummy; } ;
struct i2400m {scalar_t__ rx_roq; } ;



__attribute__((used)) static
unsigned __i2400m_roq_index(struct i2400m *i2400m, struct i2400m_roq *roq)
{
 return ((unsigned long) roq - (unsigned long) i2400m->rx_roq)
  / sizeof(*roq);
}
