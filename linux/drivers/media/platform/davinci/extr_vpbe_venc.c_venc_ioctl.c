
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;



 int VENC_VSTAT ;
 int VENC_VSTAT_FIDST ;
 int v4l2_err (struct v4l2_subdev*,char*) ;
 int venc_read (struct v4l2_subdev*,int ) ;

__attribute__((used)) static long venc_ioctl(struct v4l2_subdev *sd,
   unsigned int cmd,
   void *arg)
{
 u32 val;

 switch (cmd) {
 case 128:
  val = venc_read(sd, VENC_VSTAT);
  *((int *)arg) = ((val & VENC_VSTAT_FIDST) ==
  VENC_VSTAT_FIDST);
  break;
 default:
  v4l2_err(sd, "Wrong IOCTL cmd\n");
  break;
 }

 return 0;
}
