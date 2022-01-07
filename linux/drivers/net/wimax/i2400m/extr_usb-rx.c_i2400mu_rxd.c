
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct net_device* net_dev; } ;
struct i2400m {int rx_lock; TYPE_1__ wimax_dev; } ;
struct i2400mu {int rx_size; TYPE_2__* usb_iface; int * rx_kthread; int urb_edc; int rx_size_acc; int rx_size_cnt; int rx_pending_count; int rx_wq; struct i2400m i2400m; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;


 int BUG_ON (int ) ;
 int EDC_ERROR_TIMEFRAME ;
 int EDC_MAX_ERRORS ;
 int EIO ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __netdev_alloc_skb (struct net_device*,int,int ) ;
 int atomic_dec (int *) ;
 size_t atomic_read (int *) ;
 int * current ;
 int d_fnend (int,struct device*,char*,struct i2400mu*,int) ;
 int d_fnstart (int,struct device*,char*,struct i2400mu*) ;
 int d_printf (int,struct device*,char*,...) ;
 int dev_err (struct device*,char*,...) ;
 scalar_t__ edc_inc (int *,int ,int ) ;
 int i2400m_rx (struct i2400m*,struct sk_buff*) ;
 struct sk_buff* i2400mu_rx (struct i2400mu*,struct sk_buff*) ;
 int i2400mu_rx_size_maybe_shrink (struct i2400mu*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ kthread_should_stop () ;
 int msleep (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_queue_reset_device (TYPE_2__*) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static
int i2400mu_rxd(void *_i2400mu)
{
 int result = 0;
 struct i2400mu *i2400mu = _i2400mu;
 struct i2400m *i2400m = &i2400mu->i2400m;
 struct device *dev = &i2400mu->usb_iface->dev;
 struct net_device *net_dev = i2400m->wimax_dev.net_dev;
 size_t pending;
 int rx_size;
 struct sk_buff *rx_skb;
 unsigned long flags;

 d_fnstart(4, dev, "(i2400mu %p)\n", i2400mu);
 spin_lock_irqsave(&i2400m->rx_lock, flags);
 BUG_ON(i2400mu->rx_kthread != ((void*)0));
 i2400mu->rx_kthread = current;
 spin_unlock_irqrestore(&i2400m->rx_lock, flags);
 while (1) {
  d_printf(2, dev, "RX: waiting for messages\n");
  pending = 0;
  wait_event_interruptible(
   i2400mu->rx_wq,
   (kthread_should_stop()
    || (pending = atomic_read(&i2400mu->rx_pending_count)))
   );
  if (kthread_should_stop())
   break;
  if (pending == 0)
   continue;
  rx_size = i2400mu->rx_size;
  d_printf(2, dev, "RX: reading up to %d bytes\n", rx_size);
  rx_skb = __netdev_alloc_skb(net_dev, rx_size, GFP_KERNEL);
  if (rx_skb == ((void*)0)) {
   dev_err(dev, "RX: can't allocate skb [%d bytes]\n",
    rx_size);
   msleep(50);
   continue;
  }


  rx_skb = i2400mu_rx(i2400mu, rx_skb);
  result = PTR_ERR(rx_skb);
  if (IS_ERR(rx_skb))
   goto out;
  atomic_dec(&i2400mu->rx_pending_count);
  if (rx_skb == ((void*)0) || rx_skb->len == 0) {

   kfree_skb(rx_skb);
   continue;
  }


  i2400mu->rx_size_cnt++;
  i2400mu->rx_size_acc += rx_skb->len;
  result = i2400m_rx(i2400m, rx_skb);
  if (result == -EIO
      && edc_inc(&i2400mu->urb_edc,
          EDC_MAX_ERRORS, EDC_ERROR_TIMEFRAME)) {
   goto error_reset;
  }


  i2400mu_rx_size_maybe_shrink(i2400mu);
 }
 result = 0;
out:
 spin_lock_irqsave(&i2400m->rx_lock, flags);
 i2400mu->rx_kthread = ((void*)0);
 spin_unlock_irqrestore(&i2400m->rx_lock, flags);
 d_fnend(4, dev, "(i2400mu %p) = %d\n", i2400mu, result);
 return result;

error_reset:
 dev_err(dev, "RX: maximum errors in received buffer exceeded; "
  "resetting device\n");
 usb_queue_reset_device(i2400mu->usb_iface);
 goto out;
}
