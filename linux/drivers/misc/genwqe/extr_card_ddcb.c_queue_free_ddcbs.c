
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddcb_queue {int ddcb_max; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int queue_enqueued_ddcbs (struct ddcb_queue*) ;

__attribute__((used)) static int queue_free_ddcbs(struct ddcb_queue *queue)
{
 int free_ddcbs = queue->ddcb_max - queue_enqueued_ddcbs(queue) - 1;

 if (WARN_ON_ONCE(free_ddcbs < 0)) {
  return 0;
 }
 return free_ddcbs;
}
