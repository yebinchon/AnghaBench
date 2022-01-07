
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {size_t input; struct v4l2_dv_timings* dv_timings_cap; int vb_vid_cap_q; } ;
struct v4l2_dv_timings {int dummy; } ;
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
 int vivid_is_hdmi_cap (struct vivid_dev*) ;
 int vivid_update_format_cap (struct vivid_dev*,int) ;

int vivid_vid_cap_s_dv_timings(struct file *file, void *_fh,
        struct v4l2_dv_timings *timings)
{
 struct vivid_dev *dev = video_drvdata(file);

 if (!vivid_is_hdmi_cap(dev))
  return -ENODATA;
 if (!v4l2_find_dv_timings_cap(timings, &vivid_dv_timings_cap,
          0, ((void*)0), ((void*)0)) &&
     !valid_cvt_gtf_timings(timings))
  return -EINVAL;

 if (v4l2_match_dv_timings(timings, &dev->dv_timings_cap[dev->input],
      0, 0))
  return 0;
 if (vb2_is_busy(&dev->vb_vid_cap_q))
  return -EBUSY;

 dev->dv_timings_cap[dev->input] = *timings;
 vivid_update_format_cap(dev, 0);
 return 0;
}
