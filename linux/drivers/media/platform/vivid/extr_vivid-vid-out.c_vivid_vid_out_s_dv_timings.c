
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_dv_timings {int dummy; } ;
struct vivid_dev {struct v4l2_dv_timings dv_timings_out; int vb_vid_out_q; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODATA ;
 int v4l2_find_dv_timings_cap (struct v4l2_dv_timings*,int *,int ,int *,int *) ;
 scalar_t__ v4l2_match_dv_timings (struct v4l2_dv_timings*,struct v4l2_dv_timings*,int ,int) ;
 int valid_cvt_gtf_timings (struct v4l2_dv_timings*) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct vivid_dev* video_drvdata (struct file*) ;
 int vivid_dv_timings_cap ;
 int vivid_is_hdmi_out (struct vivid_dev*) ;
 int vivid_update_format_out (struct vivid_dev*) ;

int vivid_vid_out_s_dv_timings(struct file *file, void *_fh,
        struct v4l2_dv_timings *timings)
{
 struct vivid_dev *dev = video_drvdata(file);
 if (!vivid_is_hdmi_out(dev))
  return -ENODATA;
 if (!v4l2_find_dv_timings_cap(timings, &vivid_dv_timings_cap,
    0, ((void*)0), ((void*)0)) &&
     !valid_cvt_gtf_timings(timings))
  return -EINVAL;
 if (v4l2_match_dv_timings(timings, &dev->dv_timings_out, 0, 1))
  return 0;
 if (vb2_is_busy(&dev->vb_vid_out_q))
  return -EBUSY;
 dev->dv_timings_out = *timings;
 vivid_update_format_out(dev);
 return 0;
}
