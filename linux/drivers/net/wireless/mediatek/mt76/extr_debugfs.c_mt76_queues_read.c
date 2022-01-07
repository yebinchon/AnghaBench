
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int private; } ;
struct mt76_sw_queue {int swq_queued; TYPE_1__* q; } ;
struct mt76_dev {struct mt76_sw_queue* q_tx; } ;
struct TYPE_2__ {int tail; int head; int queued; } ;


 int ARRAY_SIZE (struct mt76_sw_queue*) ;
 struct mt76_dev* dev_get_drvdata (int ) ;
 int seq_printf (struct seq_file*,char*,int,int ,int ,int ,int ) ;

__attribute__((used)) static int
mt76_queues_read(struct seq_file *s, void *data)
{
 struct mt76_dev *dev = dev_get_drvdata(s->private);
 int i;

 for (i = 0; i < ARRAY_SIZE(dev->q_tx); i++) {
  struct mt76_sw_queue *q = &dev->q_tx[i];

  if (!q->q)
   continue;

  seq_printf(s,
      "%d:	queued=%d head=%d tail=%d swq_queued=%d\n",
      i, q->q->queued, q->q->head, q->q->tail,
      q->swq_queued);
 }

 return 0;
}
