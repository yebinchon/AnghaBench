
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int VDAC_COMPONENT ;
 int VDAC_S_VIDEO ;
 int VENC_DACSEL ;
 int debug ;
 int v4l2_dbg (int ,int,struct v4l2_subdev*,char*) ;
 int venc_write (struct v4l2_subdev*,int ,int ) ;

__attribute__((used)) static int venc_set_dac(struct v4l2_subdev *sd, u32 out_index)
{
 switch (out_index) {
 case 0:
  v4l2_dbg(debug, 1, sd, "Setting output to Composite\n");
  venc_write(sd, VENC_DACSEL, 0);
  break;
 case 1:
  v4l2_dbg(debug, 1, sd, "Setting output to Component\n");
  venc_write(sd, VENC_DACSEL, VDAC_COMPONENT);
  break;
 case 2:
  v4l2_dbg(debug, 1, sd, "Setting output to S-video\n");
  venc_write(sd, VENC_DACSEL, VDAC_S_VIDEO);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
