
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* net_dev; } ;
struct i2400m {int (* bus_release ) (struct i2400m*) ;int pm_notifier; TYPE_2__ wimax_dev; int recovery_ws; int reset_ws; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int kobj; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;


 int cancel_work_sync (int *) ;
 int d_fnend (int,struct device*,char*,struct i2400m*) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*) ;
 int i2400m_bm_buf_free (struct i2400m*) ;
 int i2400m_debugfs_rm (struct i2400m*) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_dev_attr_group ;
 int i2400m_dev_stop (struct i2400m*) ;
 int netif_stop_queue (TYPE_3__*) ;
 int stub1 (struct i2400m*) ;
 int sysfs_remove_group (int *,int *) ;
 int unregister_netdev (TYPE_3__*) ;
 int unregister_pm_notifier (int *) ;
 int wimax_dev_rm (TYPE_2__*) ;

void i2400m_release(struct i2400m *i2400m)
{
 struct device *dev = i2400m_dev(i2400m);

 d_fnstart(3, dev, "(i2400m %p)\n", i2400m);
 netif_stop_queue(i2400m->wimax_dev.net_dev);

 i2400m_dev_stop(i2400m);

 cancel_work_sync(&i2400m->reset_ws);
 cancel_work_sync(&i2400m->recovery_ws);

 i2400m_debugfs_rm(i2400m);
 sysfs_remove_group(&i2400m->wimax_dev.net_dev->dev.kobj,
      &i2400m_dev_attr_group);
 wimax_dev_rm(&i2400m->wimax_dev);
 unregister_netdev(i2400m->wimax_dev.net_dev);
 unregister_pm_notifier(&i2400m->pm_notifier);
 if (i2400m->bus_release)
  i2400m->bus_release(i2400m);
 i2400m_bm_buf_free(i2400m);
 d_fnend(3, dev, "(i2400m %p) = void\n", i2400m);
}
