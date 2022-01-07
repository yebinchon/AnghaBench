
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_input {unsigned int index; int std; int status; int name; int type; } ;
struct tw68_dev {unsigned int input; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int tvnorms; } ;


 int EINVAL ;
 unsigned int TW68_INPUT_MAX ;
 int TW68_MVSN ;
 int TW68_STATUS1 ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int V4L2_IN_ST_MACROVISION ;
 int V4L2_IN_ST_NO_COLOR ;
 int V4L2_IN_ST_NO_H_LOCK ;
 int V4L2_IN_ST_NO_SIGNAL ;
 int V4L2_IN_ST_NO_SYNC ;
 int snprintf (int ,int,char*,unsigned int) ;
 int tw_readb (int ) ;
 TYPE_1__* video_devdata (struct file*) ;
 struct tw68_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int tw68_enum_input(struct file *file, void *priv,
     struct v4l2_input *i)
{
 struct tw68_dev *dev = video_drvdata(file);
 unsigned int n;

 n = i->index;
 if (n >= TW68_INPUT_MAX)
  return -EINVAL;
 i->index = n;
 i->type = V4L2_INPUT_TYPE_CAMERA;
 snprintf(i->name, sizeof(i->name), "Composite %d", n);


 if (n == dev->input) {
  int v1 = tw_readb(TW68_STATUS1);
  int v2 = tw_readb(TW68_MVSN);

  if (0 != (v1 & (1 << 7)))
   i->status |= V4L2_IN_ST_NO_SYNC;
  if (0 != (v1 & (1 << 6)))
   i->status |= V4L2_IN_ST_NO_H_LOCK;
  if (0 != (v1 & (1 << 2)))
   i->status |= V4L2_IN_ST_NO_SIGNAL;
  if (0 != (v1 & 1 << 1))
   i->status |= V4L2_IN_ST_NO_COLOR;
  if (0 != (v2 & (1 << 2)))
   i->status |= V4L2_IN_ST_MACROVISION;
 }
 i->std = video_devdata(file)->tvnorms;
 return 0;
}
