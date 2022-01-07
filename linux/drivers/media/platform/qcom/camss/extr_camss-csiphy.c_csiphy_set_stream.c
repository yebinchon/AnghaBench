
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct csiphy_device {int dummy; } ;


 int csiphy_stream_off (struct csiphy_device*) ;
 int csiphy_stream_on (struct csiphy_device*) ;
 struct csiphy_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int csiphy_set_stream(struct v4l2_subdev *sd, int enable)
{
 struct csiphy_device *csiphy = v4l2_get_subdevdata(sd);
 int ret = 0;

 if (enable)
  ret = csiphy_stream_on(csiphy);
 else
  csiphy_stream_off(csiphy);

 return ret;
}
