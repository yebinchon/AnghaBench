
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v4l2_std_id ;
struct vivid_dev {scalar_t__* std_cap; size_t input; int vb_vbi_cap_q; int vb_vid_cap_q; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int ENODATA ;
 scalar_t__ vb2_is_busy (int *) ;
 struct vivid_dev* video_drvdata (struct file*) ;
 int vivid_is_sdtv_cap (struct vivid_dev*) ;
 int vivid_update_format_cap (struct vivid_dev*,int) ;

int vivid_vid_cap_s_std(struct file *file, void *priv, v4l2_std_id id)
{
 struct vivid_dev *dev = video_drvdata(file);

 if (!vivid_is_sdtv_cap(dev))
  return -ENODATA;
 if (dev->std_cap[dev->input] == id)
  return 0;
 if (vb2_is_busy(&dev->vb_vid_cap_q) || vb2_is_busy(&dev->vb_vbi_cap_q))
  return -EBUSY;
 dev->std_cap[dev->input] = id;
 vivid_update_format_cap(dev, 0);
 return 0;
}
