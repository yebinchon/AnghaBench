
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5c73m3 {int dummy; } ;


 unsigned int COMM_FLICKER_AUTO_50HZ ;
 unsigned int COMM_FLICKER_AUTO_60HZ ;
 int COMM_FLICKER_MODE ;
 unsigned int COMM_FLICKER_NONE ;




 int s5c73m3_isp_command (struct s5c73m3*,int ,unsigned int) ;

__attribute__((used)) static int s5c73m3_set_power_line_freq(struct s5c73m3 *state, int val)
{
 unsigned int pwr_line_freq = COMM_FLICKER_NONE;

 switch (val) {
 case 128:
  pwr_line_freq = COMM_FLICKER_NONE;
  break;
 case 131:
  pwr_line_freq = COMM_FLICKER_AUTO_50HZ;
  break;
 case 130:
  pwr_line_freq = COMM_FLICKER_AUTO_60HZ;
  break;
 default:
 case 129:
  pwr_line_freq = COMM_FLICKER_NONE;
 }

 return s5c73m3_isp_command(state, COMM_FLICKER_MODE, pwr_line_freq);
}
