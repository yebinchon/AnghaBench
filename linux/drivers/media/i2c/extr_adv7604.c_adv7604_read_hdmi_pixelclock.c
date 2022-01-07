
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int hdmi_read (struct v4l2_subdev*,int) ;
 scalar_t__ is_hdmi (struct v4l2_subdev*) ;

__attribute__((used)) static unsigned int adv7604_read_hdmi_pixelclock(struct v4l2_subdev *sd)
{
 unsigned int freq;
 int a, b;

 a = hdmi_read(sd, 0x06);
 b = hdmi_read(sd, 0x3b);
 if (a < 0 || b < 0)
  return 0;
 freq = a * 1000000 + ((b & 0x30) >> 4) * 250000;

 if (is_hdmi(sd)) {

  unsigned bits_per_channel = ((hdmi_read(sd, 0x0b) & 0x60) >> 4) + 8;

  freq = freq * 8 / bits_per_channel;
 }

 return freq;
}
