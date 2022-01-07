
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_fh {int dummy; } ;
struct v4l2_event_subscription {scalar_t__ type; } ;
struct ispstat {scalar_t__ event_type; } ;


 int EINVAL ;
 int STAT_NEVENTS ;
 int v4l2_event_subscribe (struct v4l2_fh*,struct v4l2_event_subscription*,int ,int *) ;
 struct ispstat* v4l2_get_subdevdata (struct v4l2_subdev*) ;

int omap3isp_stat_subscribe_event(struct v4l2_subdev *subdev,
      struct v4l2_fh *fh,
      struct v4l2_event_subscription *sub)
{
 struct ispstat *stat = v4l2_get_subdevdata(subdev);

 if (sub->type != stat->event_type)
  return -EINVAL;

 return v4l2_event_subscribe(fh, sub, STAT_NEVENTS, ((void*)0));
}
