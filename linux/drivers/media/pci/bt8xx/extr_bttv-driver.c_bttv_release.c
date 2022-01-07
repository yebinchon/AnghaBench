
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct file {struct bttv_fh* private_data; } ;
struct TYPE_5__ {struct bttv_fh* read_buf; } ;
struct bttv_fh {int fh; TYPE_1__ vbi; TYPE_1__ cap; struct bttv* btv; } ;
struct bttv {int mute; int users; } ;


 int RESOURCE_OVERLAY ;
 int RESOURCE_VBI ;
 int RESOURCE_VIDEO_READ ;
 int RESOURCE_VIDEO_STREAM ;
 int audio_mute (struct bttv*,int ) ;
 int bttv_field_count (struct bttv*) ;
 int bttv_switch_overlay (struct bttv*,struct bttv_fh*,int *) ;
 int buffer_release (TYPE_1__*,struct bttv_fh*) ;
 scalar_t__ check_btres (struct bttv_fh*,int ) ;
 int free_btres_lock (struct bttv*,struct bttv_fh*,int ) ;
 int kfree (struct bttv_fh*) ;
 int v4l2_fh_del (int *) ;
 int v4l2_fh_exit (int *) ;
 int videobuf_mmap_free (TYPE_1__*) ;
 int videobuf_stop (TYPE_1__*) ;
 int videobuf_streamoff (TYPE_1__*) ;

__attribute__((used)) static int bttv_release(struct file *file)
{
 struct bttv_fh *fh = file->private_data;
 struct bttv *btv = fh->btv;


 if (check_btres(fh, RESOURCE_OVERLAY))
  bttv_switch_overlay(btv,fh,((void*)0));


 if (check_btres(fh, RESOURCE_VIDEO_STREAM)) {
  videobuf_streamoff(&fh->cap);
  free_btres_lock(btv,fh,RESOURCE_VIDEO_STREAM);
 }
 if (fh->cap.read_buf) {
  buffer_release(&fh->cap,fh->cap.read_buf);
  kfree(fh->cap.read_buf);
 }
 if (check_btres(fh, RESOURCE_VIDEO_READ)) {
  free_btres_lock(btv, fh, RESOURCE_VIDEO_READ);
 }


 if (check_btres(fh, RESOURCE_VBI)) {
  videobuf_stop(&fh->vbi);
  free_btres_lock(btv,fh,RESOURCE_VBI);
 }



 videobuf_mmap_free(&fh->cap);
 videobuf_mmap_free(&fh->vbi);
 file->private_data = ((void*)0);

 btv->users--;
 bttv_field_count(btv);

 if (!btv->users)
  audio_mute(btv, btv->mute);

 v4l2_fh_del(&fh->fh);
 v4l2_fh_exit(&fh->fh);
 kfree(fh);
 return 0;
}
