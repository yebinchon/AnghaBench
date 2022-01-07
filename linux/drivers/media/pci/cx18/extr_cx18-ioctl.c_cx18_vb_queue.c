
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {int dummy; } ;
struct cx18_stream {int vb_type; struct videobuf_queue vbuf_q; } ;
struct cx18_open_id {size_t type; struct cx18* cx; } ;
struct cx18 {struct cx18_stream* streams; } ;





__attribute__((used)) static struct videobuf_queue *cx18_vb_queue(struct cx18_open_id *id)
{
 struct videobuf_queue *q = ((void*)0);
 struct cx18 *cx = id->cx;
 struct cx18_stream *s = &cx->streams[id->type];

 switch (s->vb_type) {
 case 128:
  q = &s->vbuf_q;
  break;
 case 129:
  break;
 default:
  break;
 }
 return q;
}
