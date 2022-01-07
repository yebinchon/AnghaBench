
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
struct net_device {int dummy; } ;
struct i2400m {int tx_lock; int wake_tx_ws; int wake_tx_skb; } ;
struct device {int dummy; } ;


 int EBUSY ;
 int WARN_ON (int) ;
 int d_dump (int,struct device*,int ,int ) ;
 int d_fnend (int,struct device*,char*,struct sk_buff*,struct net_device*,int) ;
 int d_fnstart (int,struct device*,char*,struct sk_buff*,struct net_device*) ;
 int d_printf (int,struct device*,char*,struct sk_buff*,int ) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_get (struct i2400m*) ;
 int i2400m_tx_prep_header (struct sk_buff*) ;
 scalar_t__ net_ratelimit () ;
 int netif_queue_stopped (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int schedule_work (int *) ;
 int skb_get (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static
int i2400m_net_wake_tx(struct i2400m *i2400m, struct net_device *net_dev,
         struct sk_buff *skb)
{
 int result;
 struct device *dev = i2400m_dev(i2400m);
 unsigned long flags;

 d_fnstart(3, dev, "(skb %p net_dev %p)\n", skb, net_dev);
 if (net_ratelimit()) {
  d_printf(3, dev, "WAKE&NETTX: "
    "skb %p sending %d bytes to radio\n",
    skb, skb->len);
  d_dump(4, dev, skb->data, skb->len);
 }



 result = 0;
 spin_lock_irqsave(&i2400m->tx_lock, flags);
 if (!i2400m->wake_tx_skb) {
  netif_stop_queue(net_dev);
  i2400m_get(i2400m);
  i2400m->wake_tx_skb = skb_get(skb);
  i2400m_tx_prep_header(skb);
  result = schedule_work(&i2400m->wake_tx_ws);
  WARN_ON(result == 0);
 }
 spin_unlock_irqrestore(&i2400m->tx_lock, flags);
 if (result == 0) {




  if (net_ratelimit())
   d_printf(1, dev, "NETTX: device exiting idle, "
     "dropping skb %p, queue running %d\n",
     skb, netif_queue_stopped(net_dev));
  result = -EBUSY;
 }
 d_fnend(3, dev, "(skb %p net_dev %p) = %d\n", skb, net_dev, result);
 return result;
}
