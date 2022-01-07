
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v4l2_std_id ;
struct vivid_dev {scalar_t__ std_out; int vb_vbi_out_q; int vb_vid_out_q; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int ENODATA ;
 scalar_t__ vb2_is_busy (int *) ;
 struct vivid_dev* video_drvdata (struct file*) ;
 int vivid_is_svid_out (struct vivid_dev*) ;
 int vivid_update_format_out (struct vivid_dev*) ;

int vivid_vid_out_s_std(struct file *file, void *priv, v4l2_std_id id)
{
 struct vivid_dev *dev = video_drvdata(file);

 if (!vivid_is_svid_out(dev))
  return -ENODATA;
 if (dev->std_out == id)
  return 0;
 if (vb2_is_busy(&dev->vb_vid_out_q) || vb2_is_busy(&dev->vb_vbi_out_q))
  return -EBUSY;
 dev->std_out = id;
 vivid_update_format_out(dev);
 return 0;
}
