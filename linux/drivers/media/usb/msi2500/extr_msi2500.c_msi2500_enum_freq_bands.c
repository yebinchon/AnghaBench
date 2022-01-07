
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency_band {int tuner; size_t index; int type; } ;
struct msi2500_dev {int v4l2_subdev; int dev; } ;
struct file {int dummy; } ;


 size_t ARRAY_SIZE (struct v4l2_frequency_band*) ;
 int EINVAL ;
 struct v4l2_frequency_band* bands ;
 int dev_dbg (int ,char*,int,int ,size_t) ;
 int enum_freq_bands ;
 int tuner ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_frequency_band*) ;
 struct msi2500_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int msi2500_enum_freq_bands(struct file *file, void *priv,
       struct v4l2_frequency_band *band)
{
 struct msi2500_dev *dev = video_drvdata(file);
 int ret;

 dev_dbg(dev->dev, "tuner=%d type=%d index=%d\n",
  band->tuner, band->type, band->index);

 if (band->tuner == 0) {
  if (band->index >= ARRAY_SIZE(bands)) {
   ret = -EINVAL;
  } else {
   *band = bands[band->index];
   ret = 0;
  }
 } else if (band->tuner == 1) {
  ret = v4l2_subdev_call(dev->v4l2_subdev, tuner,
           enum_freq_bands, band);
 } else {
  ret = -EINVAL;
 }

 return ret;
}
