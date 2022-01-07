
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int hdmi_read (struct v4l2_subdev*,int) ;

__attribute__((used)) static inline bool is_hdmi(struct v4l2_subdev *sd)
{
 return hdmi_read(sd, 0x05) & 0x80;
}
