
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ width; scalar_t__ height; int pixelformat; } ;
struct TYPE_11__ {TYPE_4__ pix; } ;
struct v4l2_format {TYPE_5__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_8__ {scalar_t__ width; scalar_t__ height; } ;
struct TYPE_7__ {scalar_t__ inhibit_htables; } ;
struct TYPE_9__ {TYPE_2__ roi; TYPE_1__ compression; } ;
struct camera_data {scalar_t__ width; scalar_t__ height; int num_frames; TYPE_6__* buffers; TYPE_3__ params; int pixelformat; } ;
struct TYPE_12__ {scalar_t__ status; } ;


 int DBG (char*,scalar_t__,scalar_t__) ;
 scalar_t__ FRAME_EMPTY ;
 scalar_t__ FRAME_READING ;
 int cpia2_set_format (struct camera_data*) ;
 int cpia2_try_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;
 int sync (struct camera_data*,int) ;
 struct camera_data* video_drvdata (struct file*) ;

__attribute__((used)) static int cpia2_s_fmt_vid_cap(struct file *file, void *_fh,
     struct v4l2_format *f)
{
 struct camera_data *cam = video_drvdata(file);
 int err, frame;

 err = cpia2_try_fmt_vid_cap(file, _fh, f);
 if(err != 0)
  return err;

 cam->pixelformat = f->fmt.pix.pixelformat;



 cam->params.compression.inhibit_htables = 0;





 DBG("Requested width = %d, height = %d\n",
     f->fmt.pix.width, f->fmt.pix.height);
 if (f->fmt.pix.width != cam->width ||
     f->fmt.pix.height != cam->height) {
  cam->width = f->fmt.pix.width;
  cam->height = f->fmt.pix.height;
  cam->params.roi.width = f->fmt.pix.width;
  cam->params.roi.height = f->fmt.pix.height;
  cpia2_set_format(cam);
 }

 for (frame = 0; frame < cam->num_frames; ++frame) {
  if (cam->buffers[frame].status == FRAME_READING)
   if ((err = sync(cam, frame)) < 0)
    return err;

  cam->buffers[frame].status = FRAME_EMPTY;
 }

 return 0;
}
