
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct mt76_dev {int dummy; } ;


 int GFP_ATOMIC ;
 int MT_RXQ_MAIN ;
 int mt76_rx_poll_complete (struct mt76_dev*,int ,int *) ;
 struct urb* mt76u_get_next_rx_entry (struct mt76_dev*) ;
 int mt76u_process_rx_entry (struct mt76_dev*,struct urb*) ;
 int mt76u_refill_rx (struct mt76_dev*,struct urb*,int,int ) ;
 int mt76u_submit_rx_buf (struct mt76_dev*,struct urb*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void mt76u_rx_tasklet(unsigned long data)
{
 struct mt76_dev *dev = (struct mt76_dev *)data;
 struct urb *urb;
 int err, count;

 rcu_read_lock();

 while (1) {
  urb = mt76u_get_next_rx_entry(dev);
  if (!urb)
   break;

  count = mt76u_process_rx_entry(dev, urb);
  if (count > 0) {
   err = mt76u_refill_rx(dev, urb, count, GFP_ATOMIC);
   if (err < 0)
    break;
  }
  mt76u_submit_rx_buf(dev, urb);
 }
 mt76_rx_poll_complete(dev, MT_RXQ_MAIN, ((void*)0));

 rcu_read_unlock();
}
