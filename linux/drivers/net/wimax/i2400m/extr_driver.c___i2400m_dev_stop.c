
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {int dummy; } ;
struct i2400m {int work_queue; int (* bus_dev_stop ) (struct i2400m*) ;scalar_t__ ready; int msg_completion; struct wimax_dev wimax_dev; } ;
struct device {int dummy; } ;


 int EL3RST ;
 int WIMAX_ST_DOWN ;
 int __WIMAX_ST_QUIESCING ;
 int complete (int *) ;
 int d_fnend (int,struct device*,char*,struct i2400m*) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*) ;
 int destroy_workqueue (int ) ;
 int flush_workqueue (int ) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_dev_shutdown (struct i2400m*) ;
 int i2400m_msg_to_dev_cancel_wait (struct i2400m*,int ) ;
 int i2400m_net_wake_stop (struct i2400m*) ;
 int i2400m_rx_release (struct i2400m*) ;
 int i2400m_tx_release (struct i2400m*) ;
 int stub1 (struct i2400m*) ;
 int wimax_state_change (struct wimax_dev*,int ) ;
 int wmb () ;

__attribute__((used)) static
void __i2400m_dev_stop(struct i2400m *i2400m)
{
 struct wimax_dev *wimax_dev = &i2400m->wimax_dev;
 struct device *dev = i2400m_dev(i2400m);

 d_fnstart(3, dev, "(i2400m %p)\n", i2400m);
 wimax_state_change(wimax_dev, __WIMAX_ST_QUIESCING);
 i2400m_msg_to_dev_cancel_wait(i2400m, -EL3RST);
 complete(&i2400m->msg_completion);
 i2400m_net_wake_stop(i2400m);
 i2400m_dev_shutdown(i2400m);




 i2400m->ready = 0;
 wmb();
 flush_workqueue(i2400m->work_queue);

 if (i2400m->bus_dev_stop)
  i2400m->bus_dev_stop(i2400m);
 destroy_workqueue(i2400m->work_queue);
 i2400m_rx_release(i2400m);
 i2400m_tx_release(i2400m);
 wimax_state_change(wimax_dev, WIMAX_ST_DOWN);
 d_fnend(3, dev, "(i2400m %p) = 0\n", i2400m);
}
