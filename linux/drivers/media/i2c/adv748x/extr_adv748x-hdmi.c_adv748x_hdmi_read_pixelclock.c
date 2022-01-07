
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv748x_state {int dummy; } ;


 int ADV748X_HDMI_TMDS_1 ;
 int ADV748X_HDMI_TMDS_2 ;
 int ENODATA ;
 int hdmi_read (struct adv748x_state*,int ) ;

__attribute__((used)) static int adv748x_hdmi_read_pixelclock(struct adv748x_state *state)
{
 int a, b;

 a = hdmi_read(state, ADV748X_HDMI_TMDS_1);
 b = hdmi_read(state, ADV748X_HDMI_TMDS_2);
 if (a < 0 || b < 0)
  return -ENODATA;






 return ((a << 1) | (b >> 7)) * 1000000 + (b & 0x7f) * 1000000 / 128;
}
