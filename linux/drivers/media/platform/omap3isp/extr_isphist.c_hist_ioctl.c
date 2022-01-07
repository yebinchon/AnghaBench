
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ispstat {int dummy; } ;


 long ENOIOCTLCMD ;




 long omap3isp_stat_config (struct ispstat*,void*) ;
 long omap3isp_stat_enable (struct ispstat*,int) ;
 long omap3isp_stat_request_statistics (struct ispstat*,void*) ;
 long omap3isp_stat_request_statistics_time32 (struct ispstat*,void*) ;
 struct ispstat* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static long hist_ioctl(struct v4l2_subdev *sd, unsigned int cmd, void *arg)
{
 struct ispstat *stat = v4l2_get_subdevdata(sd);

 switch (cmd) {
 case 131:
  return omap3isp_stat_config(stat, arg);
 case 129:
  return omap3isp_stat_request_statistics(stat, arg);
 case 128:
  return omap3isp_stat_request_statistics_time32(stat, arg);
 case 130: {
  int *en = arg;
  return omap3isp_stat_enable(stat, !!*en);
 }
 }

 return -ENOIOCTLCMD;

}
