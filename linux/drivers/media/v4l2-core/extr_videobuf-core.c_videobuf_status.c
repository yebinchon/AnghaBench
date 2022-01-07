
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct videobuf_queue {TYPE_1__* int_ops; } ;
struct videobuf_buffer {int memory; int state; int field_count; int size; int ts; int field; scalar_t__ map; int boff; int bsize; int baddr; int i; int magic; } ;
struct TYPE_4__ {int offset; int userptr; } ;
struct v4l2_buffer {int type; int memory; int sequence; int bytesused; int timestamp; int field; int flags; TYPE_2__ m; int length; int index; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_3__ {int magic; } ;


 int MAGIC_BUFFER ;
 int MAGIC_CHECK (int ,int ) ;
 int MAGIC_QTYPE_OPS ;
 int V4L2_BUF_FLAG_DONE ;
 int V4L2_BUF_FLAG_ERROR ;
 int V4L2_BUF_FLAG_MAPPED ;
 int V4L2_BUF_FLAG_QUEUED ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int ns_to_timeval (int ) ;

__attribute__((used)) static void videobuf_status(struct videobuf_queue *q, struct v4l2_buffer *b,
       struct videobuf_buffer *vb, enum v4l2_buf_type type)
{
 MAGIC_CHECK(vb->magic, MAGIC_BUFFER);
 MAGIC_CHECK(q->int_ops->magic, MAGIC_QTYPE_OPS);

 b->index = vb->i;
 b->type = type;

 b->memory = vb->memory;
 switch (b->memory) {
 case 137:
  b->m.offset = vb->boff;
  b->length = vb->bsize;
  break;
 case 135:
  b->m.userptr = vb->baddr;
  b->length = vb->bsize;
  break;
 case 136:
  b->m.offset = vb->boff;
  break;
 case 138:

  break;
 }

 b->flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 if (vb->map)
  b->flags |= V4L2_BUF_FLAG_MAPPED;

 switch (vb->state) {
 case 129:
 case 128:
 case 134:
  b->flags |= V4L2_BUF_FLAG_QUEUED;
  break;
 case 132:
  b->flags |= V4L2_BUF_FLAG_ERROR;

 case 133:
  b->flags |= V4L2_BUF_FLAG_DONE;
  break;
 case 130:
 case 131:

  break;
 }

 b->field = vb->field;
 b->timestamp = ns_to_timeval(vb->ts);
 b->bytesused = vb->size;
 b->sequence = vb->field_count >> 1;
}
