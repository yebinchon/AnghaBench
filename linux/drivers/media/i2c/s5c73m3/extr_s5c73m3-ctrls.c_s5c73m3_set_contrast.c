
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct s5c73m3 {int dummy; } ;


 int COMM_CONTRAST ;
 int s5c73m3_isp_command (struct s5c73m3*,int ,int) ;

__attribute__((used)) static int s5c73m3_set_contrast(struct s5c73m3 *state, int val)
{
 u16 reg = (val < 0) ? -val + 2 : val;
 return s5c73m3_isp_command(state, COMM_CONTRAST, reg);
}
