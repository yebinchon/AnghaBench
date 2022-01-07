
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_fh {int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;


 int S5C73M3_ISP_FMT ;
 int S5C73M3_ISP_PAD ;
 int S5C73M3_JPEG_FMT ;
 int S5C73M3_JPEG_PAD ;
 int s5c73m3_fill_mbus_fmt (struct v4l2_mbus_framefmt*,int *,int ) ;
 int * s5c73m3_isp_resolutions ;
 int * s5c73m3_jpeg_resolutions ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,int ,int ) ;

__attribute__((used)) static int s5c73m3_open(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
{
 struct v4l2_mbus_framefmt *mf;

 mf = v4l2_subdev_get_try_format(sd, fh->pad, S5C73M3_ISP_PAD);
 s5c73m3_fill_mbus_fmt(mf, &s5c73m3_isp_resolutions[1],
      S5C73M3_ISP_FMT);

 mf = v4l2_subdev_get_try_format(sd, fh->pad, S5C73M3_JPEG_PAD);
 s5c73m3_fill_mbus_fmt(mf, &s5c73m3_jpeg_resolutions[1],
     S5C73M3_JPEG_FMT);

 return 0;
}
