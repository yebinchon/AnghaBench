
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wimax_dev {int name; } ;
struct task_struct {int dummy; } ;
struct i2400m {struct wimax_dev wimax_dev; } ;
struct i2400mu {TYPE_1__* usb_iface; struct i2400m i2400m; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 scalar_t__ IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 int dev_err (struct device*,char*,int) ;
 int i2400mu_txd ;
 struct task_struct* kthread_run (int ,struct i2400mu*,char*,int ) ;

int i2400mu_tx_setup(struct i2400mu *i2400mu)
{
 int result = 0;
 struct i2400m *i2400m = &i2400mu->i2400m;
 struct device *dev = &i2400mu->usb_iface->dev;
 struct wimax_dev *wimax_dev = &i2400m->wimax_dev;
 struct task_struct *kthread;

 kthread = kthread_run(i2400mu_txd, i2400mu, "%s-tx",
         wimax_dev->name);

 if (IS_ERR(kthread)) {
  result = PTR_ERR(kthread);
  dev_err(dev, "TX: cannot start thread: %d\n", result);
 }
 return result;
}
