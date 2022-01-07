
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;


 int DETECT_HPD ;
 int REG_DETECT_5V ;
 int io_read (struct v4l2_subdev*,int ) ;

__attribute__((used)) static bool
tda1997x_detect_tx_hpd(struct v4l2_subdev *sd)
{
 u8 reg = io_read(sd, REG_DETECT_5V);

 return ((reg & DETECT_HPD) ? 1 : 0);
}
