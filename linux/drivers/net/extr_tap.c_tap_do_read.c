
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tap_queue {int sk; int ring; } ;
struct sk_buff {int dummy; } ;
struct iov_iter {int dummy; } ;
typedef int ssize_t ;


 int DEFINE_WAIT (int ) ;
 int EAGAIN ;
 int ERESTARTSYS ;
 int TASK_INTERRUPTIBLE ;
 int consume_skb (struct sk_buff*) ;
 int current ;
 int finish_wait (int ,int *) ;
 int iov_iter_count (struct iov_iter*) ;
 int kfree_skb (struct sk_buff*) ;
 int prepare_to_wait (int ,int *,int ) ;
 struct sk_buff* ptr_ring_consume (int *) ;
 int schedule () ;
 scalar_t__ signal_pending (int ) ;
 int sk_sleep (int *) ;
 int tap_put_user (struct tap_queue*,struct sk_buff*,struct iov_iter*) ;
 scalar_t__ unlikely (int) ;
 int wait ;

__attribute__((used)) static ssize_t tap_do_read(struct tap_queue *q,
      struct iov_iter *to,
      int noblock, struct sk_buff *skb)
{
 DEFINE_WAIT(wait);
 ssize_t ret = 0;

 if (!iov_iter_count(to)) {
  kfree_skb(skb);
  return 0;
 }

 if (skb)
  goto put;

 while (1) {
  if (!noblock)
   prepare_to_wait(sk_sleep(&q->sk), &wait,
     TASK_INTERRUPTIBLE);


  skb = ptr_ring_consume(&q->ring);
  if (skb)
   break;
  if (noblock) {
   ret = -EAGAIN;
   break;
  }
  if (signal_pending(current)) {
   ret = -ERESTARTSYS;
   break;
  }

  schedule();
 }
 if (!noblock)
  finish_wait(sk_sleep(&q->sk), &wait);

put:
 if (skb) {
  ret = tap_put_user(q, skb, to);
  if (unlikely(ret < 0))
   kfree_skb(skb);
  else
   consume_skb(skb);
 }
 return ret;
}
