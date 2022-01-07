
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct vivid_dev {unsigned int* query_std_last; size_t input; scalar_t__* std_signal_mode; int * query_std; int * std_cap; int tpg; } ;
struct file {int dummy; } ;


 unsigned int ARRAY_SIZE (int *) ;
 scalar_t__ CURRENT_STD ;
 int ENODATA ;
 scalar_t__ NO_LOCK ;
 scalar_t__ NO_SIGNAL ;
 scalar_t__ SELECTED_STD ;
 scalar_t__ TPG_QUAL_NOISE ;
 int V4L2_STD_UNKNOWN ;
 scalar_t__ tpg_g_quality (int *) ;
 struct vivid_dev* video_drvdata (struct file*) ;
 int vivid_is_sdtv_cap (struct vivid_dev*) ;
 scalar_t__ vivid_is_tv_cap (struct vivid_dev*) ;
 int * vivid_standard ;

int vidioc_querystd(struct file *file, void *priv, v4l2_std_id *id)
{
 struct vivid_dev *dev = video_drvdata(file);
 unsigned int last = dev->query_std_last[dev->input];

 if (!vivid_is_sdtv_cap(dev))
  return -ENODATA;
 if (dev->std_signal_mode[dev->input] == NO_SIGNAL ||
     dev->std_signal_mode[dev->input] == NO_LOCK) {
  *id = V4L2_STD_UNKNOWN;
  return 0;
 }
 if (vivid_is_tv_cap(dev) && tpg_g_quality(&dev->tpg) == TPG_QUAL_NOISE) {
  *id = V4L2_STD_UNKNOWN;
 } else if (dev->std_signal_mode[dev->input] == CURRENT_STD) {
  *id = dev->std_cap[dev->input];
 } else if (dev->std_signal_mode[dev->input] == SELECTED_STD) {
  *id = dev->query_std[dev->input];
 } else {
  *id = vivid_standard[last];
  dev->query_std_last[dev->input] =
   (last + 1) % ARRAY_SIZE(vivid_standard);
 }

 return 0;
}
