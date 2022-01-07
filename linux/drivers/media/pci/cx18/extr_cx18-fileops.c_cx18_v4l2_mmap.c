
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct file {struct cx18_open_id* private_data; } ;
struct cx18_stream {scalar_t__ vb_type; int vbuf_q; int name; int s_flags; } ;
struct cx18_open_id {size_t type; struct cx18* cx; } ;
struct cx18 {int serialize_lock; struct cx18_stream* streams; } ;


 int CX18_DEBUG_FILE (char*) ;
 int CX18_DEBUG_INFO (char*,int ,int) ;
 size_t CX18_ENC_STREAM_TYPE_YUV ;
 int CX18_F_S_STREAMING ;
 int CX18_F_S_STREAMOFF ;
 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int cx18_start_capture (struct cx18_open_id*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int *) ;
 int videobuf_mmap_mapper (int *,struct vm_area_struct*) ;

int cx18_v4l2_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct cx18_open_id *id = file->private_data;
 struct cx18 *cx = id->cx;
 struct cx18_stream *s = &cx->streams[id->type];
 int eof = test_bit(CX18_F_S_STREAMOFF, &s->s_flags);

 if ((s->vb_type == V4L2_BUF_TYPE_VIDEO_CAPTURE) &&
  (id->type == CX18_ENC_STREAM_TYPE_YUV)) {


  if (!eof && !test_bit(CX18_F_S_STREAMING, &s->s_flags)) {
   int rc;

   mutex_lock(&cx->serialize_lock);
   rc = cx18_start_capture(id);
   mutex_unlock(&cx->serialize_lock);
   if (rc) {
    CX18_DEBUG_INFO(
     "Could not start capture for %s (%d)\n",
     s->name, rc);
    return -EINVAL;
   }
   CX18_DEBUG_FILE("Encoder mmap started capture\n");
  }

  return videobuf_mmap_mapper(&s->vbuf_q, vma);
 }

 return -EINVAL;
}
