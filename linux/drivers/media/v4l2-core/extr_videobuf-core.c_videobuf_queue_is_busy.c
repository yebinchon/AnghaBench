
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct videobuf_queue {TYPE_2__** bufs; scalar_t__ read_buf; scalar_t__ reading; scalar_t__ streaming; TYPE_1__* int_ops; } ;
struct TYPE_4__ {scalar_t__ state; scalar_t__ map; } ;
struct TYPE_3__ {int magic; } ;


 int MAGIC_CHECK (int ,int ) ;
 int MAGIC_QTYPE_OPS ;
 scalar_t__ VIDEOBUF_ACTIVE ;
 scalar_t__ VIDEOBUF_QUEUED ;
 int VIDEO_MAX_FRAME ;
 int dprintk (int,char*,...) ;

int videobuf_queue_is_busy(struct videobuf_queue *q)
{
 int i;

 MAGIC_CHECK(q->int_ops->magic, MAGIC_QTYPE_OPS);

 if (q->streaming) {
  dprintk(1, "busy: streaming active\n");
  return 1;
 }
 if (q->reading) {
  dprintk(1, "busy: pending read #1\n");
  return 1;
 }
 if (q->read_buf) {
  dprintk(1, "busy: pending read #2\n");
  return 1;
 }
 for (i = 0; i < VIDEO_MAX_FRAME; i++) {
  if (((void*)0) == q->bufs[i])
   continue;
  if (q->bufs[i]->map) {
   dprintk(1, "busy: buffer #%d mapped\n", i);
   return 1;
  }
  if (q->bufs[i]->state == VIDEOBUF_QUEUED) {
   dprintk(1, "busy: buffer #%d queued\n", i);
   return 1;
  }
  if (q->bufs[i]->state == VIDEOBUF_ACTIVE) {
   dprintk(1, "busy: buffer #%d active\n", i);
   return 1;
  }
 }
 return 0;
}
