
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;


 int RATE_REFTIM_ENABLE ;
 int REG_HDMI_INFO_RST ;
 int REG_INT_FLG_CLR_MODE ;
 int REG_RATE_CTRL ;
 int RESET_IF ;
 int io_read (struct v4l2_subdev*,int ) ;
 int io_write (struct v4l2_subdev*,int ,int) ;

__attribute__((used)) static int
tda1997x_hdmi_info_reset(struct v4l2_subdev *sd, u8 info_rst, bool reset_sus)
{
 u8 reg;


 reg = io_read(sd, REG_HDMI_INFO_RST);
 io_write(sd, REG_HDMI_INFO_RST, info_rst);


 if (reg & RESET_IF) {
  reg = io_read(sd, REG_INT_FLG_CLR_MODE);
  io_write(sd, REG_INT_FLG_CLR_MODE, reg);
 }


 reg = io_read(sd, REG_RATE_CTRL);
 reg &= ~RATE_REFTIM_ENABLE;
 if (!reset_sus)
  reg |= RATE_REFTIM_ENABLE;
 reg = io_write(sd, REG_RATE_CTRL, reg);

 return 0;
}
