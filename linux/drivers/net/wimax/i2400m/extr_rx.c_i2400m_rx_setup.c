
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct i2400m_roq_log {int dummy; } ;
struct i2400m {int rx_reorder; TYPE_1__* rx_roq; int rx_roq_refcount; } ;
struct TYPE_3__ {struct i2400m_roq_log* log; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int I2400M_RO_CIN ;
 int __i2400m_roq_init (TYPE_1__*) ;
 scalar_t__ i2400m_rx_reorder_disabled ;
 void* kcalloc (int,int,int ) ;
 int kfree (TYPE_1__*) ;
 int kref_init (int *) ;

int i2400m_rx_setup(struct i2400m *i2400m)
{
 int result = 0;

 i2400m->rx_reorder = i2400m_rx_reorder_disabled? 0 : 1;
 if (i2400m->rx_reorder) {
  unsigned itr;
  struct i2400m_roq_log *rd;

  result = -ENOMEM;

  i2400m->rx_roq = kcalloc(I2400M_RO_CIN + 1,
      sizeof(i2400m->rx_roq[0]), GFP_KERNEL);
  if (i2400m->rx_roq == ((void*)0))
   goto error_roq_alloc;

  rd = kcalloc(I2400M_RO_CIN + 1, sizeof(*i2400m->rx_roq[0].log),
        GFP_KERNEL);
  if (rd == ((void*)0)) {
   result = -ENOMEM;
   goto error_roq_log_alloc;
  }

  for(itr = 0; itr < I2400M_RO_CIN + 1; itr++) {
   __i2400m_roq_init(&i2400m->rx_roq[itr]);
   i2400m->rx_roq[itr].log = &rd[itr];
  }
  kref_init(&i2400m->rx_roq_refcount);
 }
 return 0;

error_roq_log_alloc:
 kfree(i2400m->rx_roq);
error_roq_alloc:
 return result;
}
