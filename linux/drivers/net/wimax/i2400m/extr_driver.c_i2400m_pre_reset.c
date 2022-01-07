
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int net_dev; } ;
struct i2400m {int (* bus_release ) (struct i2400m*) ;int init_mutex; TYPE_1__ wimax_dev; scalar_t__ updown; } ;
struct device {int dummy; } ;


 int __i2400m_dev_stop (struct i2400m*) ;
 int d_fnend (int,struct device*,char*,struct i2400m*) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*) ;
 int d_printf (int,struct device*,char*) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_tx_disable (int ) ;
 int stub1 (struct i2400m*) ;

int i2400m_pre_reset(struct i2400m *i2400m)
{
 struct device *dev = i2400m_dev(i2400m);

 d_fnstart(3, dev, "(i2400m %p)\n", i2400m);
 d_printf(1, dev, "pre-reset shut down\n");

 mutex_lock(&i2400m->init_mutex);
 if (i2400m->updown) {
  netif_tx_disable(i2400m->wimax_dev.net_dev);
  __i2400m_dev_stop(i2400m);


 }
 mutex_unlock(&i2400m->init_mutex);
 if (i2400m->bus_release)
  i2400m->bus_release(i2400m);
 d_fnend(3, dev, "(i2400m %p) = 0\n", i2400m);
 return 0;
}
