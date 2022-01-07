
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2400m {int dummy; } ;
struct i2400mu {int rx_wq; int rx_pending_count; TYPE_1__* usb_iface; struct i2400m i2400m; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int atomic_inc (int *) ;
 int d_fnend (int,struct device*,char*,struct i2400m*) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*) ;
 int wake_up_all (int *) ;

void i2400mu_rx_kick(struct i2400mu *i2400mu)
{
 struct i2400m *i2400m = &i2400mu->i2400m;
 struct device *dev = &i2400mu->usb_iface->dev;

 d_fnstart(3, dev, "(i2400mu %p)\n", i2400m);
 atomic_inc(&i2400mu->rx_pending_count);
 wake_up_all(&i2400mu->rx_wq);
 d_fnend(3, dev, "(i2400m %p) = void\n", i2400m);
}
