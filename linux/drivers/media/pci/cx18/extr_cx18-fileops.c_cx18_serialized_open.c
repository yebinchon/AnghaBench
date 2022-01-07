
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int * private_data; } ;
struct cx18_stream {scalar_t__ type; int video_dev; int name; struct cx18* cx; } ;
struct cx18_open_id {scalar_t__ type; int fh; scalar_t__ open_id; struct cx18* cx; } ;
struct cx18 {int i_flags; int ana_capturing; int open_id; } ;


 int CX18_DEBUG_FILE (char*,int ) ;
 int CX18_DEBUG_WARN (char*) ;
 scalar_t__ CX18_ENC_STREAM_TYPE_RAD ;
 int CX18_F_I_RADIO_USER ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ atomic_read (int *) ;
 int cx18_audio_set_io (struct cx18*) ;
 int cx18_call_all (struct cx18*,int ,int ) ;
 int cx18_mute (struct cx18*) ;
 int cx18_unmute (struct cx18*) ;
 int kfree (struct cx18_open_id*) ;
 struct cx18_open_id* kzalloc (int,int ) ;
 int s_radio ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int tuner ;
 int v4l2_fh_add (int *) ;
 int v4l2_fh_del (int *) ;
 int v4l2_fh_exit (int *) ;
 int v4l2_fh_init (int *,int *) ;
 scalar_t__ v4l2_fh_is_singular_file (struct file*) ;

__attribute__((used)) static int cx18_serialized_open(struct cx18_stream *s, struct file *filp)
{
 struct cx18 *cx = s->cx;
 struct cx18_open_id *item;

 CX18_DEBUG_FILE("open %s\n", s->name);


 item = kzalloc(sizeof(struct cx18_open_id), GFP_KERNEL);
 if (((void*)0) == item) {
  CX18_DEBUG_WARN("nomem on v4l2 open\n");
  return -ENOMEM;
 }
 v4l2_fh_init(&item->fh, &s->video_dev);

 item->cx = cx;
 item->type = s->type;

 item->open_id = cx->open_id++;
 filp->private_data = &item->fh;
 v4l2_fh_add(&item->fh);

 if (item->type == CX18_ENC_STREAM_TYPE_RAD &&
   v4l2_fh_is_singular_file(filp)) {
  if (!test_bit(CX18_F_I_RADIO_USER, &cx->i_flags)) {
   if (atomic_read(&cx->ana_capturing) > 0) {


    v4l2_fh_del(&item->fh);
    v4l2_fh_exit(&item->fh);
    kfree(item);
    return -EBUSY;
   }
  }


  set_bit(CX18_F_I_RADIO_USER, &cx->i_flags);

  cx18_mute(cx);

  cx18_call_all(cx, tuner, s_radio);

  cx18_audio_set_io(cx);

  cx18_unmute(cx);
 }
 return 0;
}
