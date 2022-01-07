
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;


 int hdmi_read (struct v4l2_subdev*,int) ;
 int hdmi_write (struct v4l2_subdev*,int,int) ;

__attribute__((used)) static inline int hdmi_write_and_or(struct v4l2_subdev *sd, u8 reg, u8 mask, u8 val)
{
 return hdmi_write(sd, reg, (hdmi_read(sd, reg) & mask) | val);
}
