
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_input {int status; int std; int name; int type; scalar_t__ index; } ;
struct tw5864_input {int nr; struct tw5864_dev* root; } ;
struct tw5864_dev {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int TW5864_INDIR_VIN_0 (int) ;
 int TW5864_INDIR_VIN_D (int) ;
 int TW5864_NORMS ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int V4L2_IN_ST_MACROVISION ;
 int V4L2_IN_ST_NO_COLOR ;
 int V4L2_IN_ST_NO_H_LOCK ;
 int V4L2_IN_ST_NO_SIGNAL ;
 int V4L2_IN_ST_NO_SYNC ;
 int snprintf (int ,int,char*,int) ;
 int tw_indir_readb (int ) ;
 struct tw5864_input* video_drvdata (struct file*) ;

__attribute__((used)) static int tw5864_enum_input(struct file *file, void *priv,
        struct v4l2_input *i)
{
 struct tw5864_input *input = video_drvdata(file);
 struct tw5864_dev *dev = input->root;

 u8 indir_0x000 = tw_indir_readb(TW5864_INDIR_VIN_0(input->nr));
 u8 indir_0x00d = tw_indir_readb(TW5864_INDIR_VIN_D(input->nr));
 u8 v1 = indir_0x000;
 u8 v2 = indir_0x00d;

 if (i->index)
  return -EINVAL;

 i->type = V4L2_INPUT_TYPE_CAMERA;
 snprintf(i->name, sizeof(i->name), "Encoder %d", input->nr);
 i->std = TW5864_NORMS;
 if (v1 & (1 << 7))
  i->status |= V4L2_IN_ST_NO_SYNC;
 if (!(v1 & (1 << 6)))
  i->status |= V4L2_IN_ST_NO_H_LOCK;
 if (v1 & (1 << 2))
  i->status |= V4L2_IN_ST_NO_SIGNAL;
 if (v1 & (1 << 1))
  i->status |= V4L2_IN_ST_NO_COLOR;
 if (v2 & (1 << 2))
  i->status |= V4L2_IN_ST_MACROVISION;

 return 0;
}
