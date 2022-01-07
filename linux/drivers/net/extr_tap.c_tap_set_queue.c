
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tap_queue {scalar_t__ numqueues; size_t numvtaps; size_t queue_index; int enabled; int queue_list; int next; struct file* file; int sk; int * taps; int tap; } ;
struct tap_dev {scalar_t__ numqueues; size_t numvtaps; size_t queue_index; int enabled; int queue_list; int next; struct file* file; int sk; int * taps; int tap; } ;
struct file {struct tap_queue* private_data; } ;


 int EBUSY ;
 scalar_t__ MAX_TAP_QUEUES ;
 int list_add_tail (int *,int *) ;
 int rcu_assign_pointer (int ,struct tap_queue*) ;
 int sock_hold (int *) ;

__attribute__((used)) static int tap_set_queue(struct tap_dev *tap, struct file *file,
    struct tap_queue *q)
{
 if (tap->numqueues == MAX_TAP_QUEUES)
  return -EBUSY;

 rcu_assign_pointer(q->tap, tap);
 rcu_assign_pointer(tap->taps[tap->numvtaps], q);
 sock_hold(&q->sk);

 q->file = file;
 q->queue_index = tap->numvtaps;
 q->enabled = 1;
 file->private_data = q;
 list_add_tail(&q->next, &tap->queue_list);

 tap->numvtaps++;
 tap->numqueues++;

 return 0;
}
