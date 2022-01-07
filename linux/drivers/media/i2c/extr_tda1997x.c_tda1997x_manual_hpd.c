
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
typedef enum hpd_mode { ____Placeholder_hpd_mode } hpd_mode ;


 int HPD_AUTO_HP_OTHER ;




 int HPD_MAN_CTRL_5VEN ;
 int HPD_MAN_CTRL_HPD_A ;
 int HPD_MAN_CTRL_HPD_B ;
 int HPD_MAN_CTRL_HPD_PULSE ;
 int HPD_POWER_BP_MASK ;
 int HPD_POWER_BP_SHIFT ;

 int REG_HPD_AUTO_CTRL ;
 int REG_HPD_MAN_CTRL ;
 int REG_HPD_POWER ;
 int io_read (struct v4l2_subdev*,int ) ;
 int io_write (struct v4l2_subdev*,int ,int) ;

__attribute__((used)) static int tda1997x_manual_hpd(struct v4l2_subdev *sd, enum hpd_mode mode)
{
 u8 hpd_auto, hpd_pwr, hpd_man;

 hpd_auto = io_read(sd, REG_HPD_AUTO_CTRL);
 hpd_pwr = io_read(sd, REG_HPD_POWER);
 hpd_man = io_read(sd, REG_HPD_MAN_CTRL);


 hpd_man &= (HPD_MAN_CTRL_HPD_PULSE |
      HPD_MAN_CTRL_5VEN |
      HPD_MAN_CTRL_HPD_B |
      HPD_MAN_CTRL_HPD_A);

 switch (mode) {

 case 130:

  hpd_pwr &= ~HPD_POWER_BP_MASK;

  hpd_man &= ~(HPD_MAN_CTRL_HPD_A | HPD_MAN_CTRL_HPD_B);
  io_write(sd, REG_HPD_POWER, hpd_pwr);
  io_write(sd, REG_HPD_MAN_CTRL, hpd_man);
  break;

 case 132:

  hpd_pwr &= ~HPD_POWER_BP_MASK;
  hpd_pwr |= 1 << HPD_POWER_BP_SHIFT;
  io_write(sd, REG_HPD_POWER, hpd_pwr);
  break;

 case 129:

  hpd_man &= ~(HPD_MAN_CTRL_HPD_A | HPD_MAN_CTRL_HPD_B);

  hpd_auto &= ~HPD_AUTO_HP_OTHER;
  io_write(sd, REG_HPD_AUTO_CTRL, hpd_auto);
  io_write(sd, REG_HPD_MAN_CTRL, hpd_man);
  break;

 case 131:
  hpd_auto |= HPD_AUTO_HP_OTHER;
  io_write(sd, REG_HPD_AUTO_CTRL, hpd_auto);
  break;

 case 128:

  hpd_man &= ~(HPD_MAN_CTRL_HPD_A | HPD_MAN_CTRL_HPD_B);
  io_write(sd, REG_HPD_MAN_CTRL, hpd_man);
  break;
 }

 return 0;
}
