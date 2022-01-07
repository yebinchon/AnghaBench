
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_input {int status; int std; int type; int name; scalar_t__ index; } ;
struct solo_enc_dev {int ch; TYPE_1__* vfd; struct solo_dev* solo_dev; } ;
struct solo_dev {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int tvnorms; } ;


 int EINVAL ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int V4L2_IN_ST_NO_SIGNAL ;
 int snprintf (int ,int,char*,int) ;
 int tw28_get_video_status (struct solo_dev*,int) ;
 struct solo_enc_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int solo_enc_enum_input(struct file *file, void *priv,
          struct v4l2_input *input)
{
 struct solo_enc_dev *solo_enc = video_drvdata(file);
 struct solo_dev *solo_dev = solo_enc->solo_dev;

 if (input->index)
  return -EINVAL;

 snprintf(input->name, sizeof(input->name), "Encoder %d",
   solo_enc->ch + 1);
 input->type = V4L2_INPUT_TYPE_CAMERA;
 input->std = solo_enc->vfd->tvnorms;

 if (!tw28_get_video_status(solo_dev, solo_enc->ch))
  input->status = V4L2_IN_ST_NO_SIGNAL;

 return 0;
}
