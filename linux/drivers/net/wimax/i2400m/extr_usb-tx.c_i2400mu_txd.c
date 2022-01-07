
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2400m {int tx_lock; } ;
struct i2400mu {int * tx_kthread; int tx_wq; TYPE_1__* usb_iface; struct i2400m i2400m; } ;
struct i2400m_msg_hdr {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int BUG_ON (int ) ;
 int WARN_ON (int ) ;
 int * current ;
 int d_dump (int,struct device*,struct i2400m_msg_hdr*,size_t) ;
 int d_fnend (int,struct device*,char*,struct i2400mu*) ;
 int d_fnstart (int,struct device*,char*,struct i2400mu*) ;
 int d_printf (int,struct device*,char*,...) ;
 struct i2400m_msg_hdr* i2400m_tx_msg_get (struct i2400m*,size_t*) ;
 int i2400m_tx_msg_sent (struct i2400m*) ;
 int i2400mu_tx (struct i2400mu*,struct i2400m_msg_hdr*,size_t) ;
 scalar_t__ kthread_should_stop () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static
int i2400mu_txd(void *_i2400mu)
{
 struct i2400mu *i2400mu = _i2400mu;
 struct i2400m *i2400m = &i2400mu->i2400m;
 struct device *dev = &i2400mu->usb_iface->dev;
 struct i2400m_msg_hdr *tx_msg;
 size_t tx_msg_size;
 unsigned long flags;

 d_fnstart(4, dev, "(i2400mu %p)\n", i2400mu);

 spin_lock_irqsave(&i2400m->tx_lock, flags);
 BUG_ON(i2400mu->tx_kthread != ((void*)0));
 i2400mu->tx_kthread = current;
 spin_unlock_irqrestore(&i2400m->tx_lock, flags);

 while (1) {
  d_printf(2, dev, "TX: waiting for messages\n");
  tx_msg = ((void*)0);
  wait_event_interruptible(
   i2400mu->tx_wq,
   (kthread_should_stop()
    || (tx_msg = i2400m_tx_msg_get(i2400m, &tx_msg_size)))
   );
  if (kthread_should_stop())
   break;
  WARN_ON(tx_msg == ((void*)0));
  d_printf(2, dev, "TX: submitting %zu bytes\n", tx_msg_size);
  d_dump(5, dev, tx_msg, tx_msg_size);

  i2400mu_tx(i2400mu, tx_msg, tx_msg_size);
  i2400m_tx_msg_sent(i2400m);
 }

 spin_lock_irqsave(&i2400m->tx_lock, flags);
 i2400mu->tx_kthread = ((void*)0);
 spin_unlock_irqrestore(&i2400m->tx_lock, flags);

 d_fnend(4, dev, "(i2400mu %p)\n", i2400mu);
 return 0;
}
