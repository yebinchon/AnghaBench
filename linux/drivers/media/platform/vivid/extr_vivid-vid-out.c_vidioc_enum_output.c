
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {size_t num_outputs; int* output_type; int* output_name_counter; int has_audio_outputs; } ;
struct v4l2_output {size_t index; int audioset; int capabilities; int name; int std; int type; } ;
struct file {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;


 int V4L2_OUTPUT_TYPE_ANALOG ;
 int V4L2_OUT_CAP_DV_TIMINGS ;
 int V4L2_OUT_CAP_STD ;
 int V4L2_STD_ALL ;
 int snprintf (int ,int,char*,int) ;
 struct vivid_dev* video_drvdata (struct file*) ;
 int vivid_audio_outputs ;

int vidioc_enum_output(struct file *file, void *priv,
    struct v4l2_output *out)
{
 struct vivid_dev *dev = video_drvdata(file);

 if (out->index >= dev->num_outputs)
  return -EINVAL;

 out->type = V4L2_OUTPUT_TYPE_ANALOG;
 switch (dev->output_type[out->index]) {
 case 128:
  snprintf(out->name, sizeof(out->name), "S-Video %u",
    dev->output_name_counter[out->index]);
  out->std = V4L2_STD_ALL;
  if (dev->has_audio_outputs)
   out->audioset = (1 << ARRAY_SIZE(vivid_audio_outputs)) - 1;
  out->capabilities = V4L2_OUT_CAP_STD;
  break;
 case 129:
  snprintf(out->name, sizeof(out->name), "HDMI %u",
    dev->output_name_counter[out->index]);
  out->capabilities = V4L2_OUT_CAP_DV_TIMINGS;
  break;
 }
 return 0;
}
