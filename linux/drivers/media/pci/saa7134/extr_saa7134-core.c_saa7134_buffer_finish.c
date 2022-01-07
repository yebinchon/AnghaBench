
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct saa7134_dmaqueue {TYPE_3__* curr; int seq_nr; } ;
struct saa7134_dev {int dummy; } ;
struct TYPE_5__ {int timestamp; } ;
struct TYPE_4__ {TYPE_2__ vb2_buf; scalar_t__ sequence; } ;
struct TYPE_6__ {TYPE_1__ vb2; } ;


 int core_dbg (char*,TYPE_3__*) ;
 int ktime_get_ns () ;
 int vb2_buffer_done (TYPE_2__*,unsigned int) ;

void saa7134_buffer_finish(struct saa7134_dev *dev,
      struct saa7134_dmaqueue *q,
      unsigned int state)
{
 core_dbg("buffer_finish %p\n", q->curr);


 q->curr->vb2.vb2_buf.timestamp = ktime_get_ns();
 q->curr->vb2.sequence = q->seq_nr++;
 vb2_buffer_done(&q->curr->vb2.vb2_buf, state);
 q->curr = ((void*)0);
}
