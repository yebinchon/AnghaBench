
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct s5c73m3 {int dummy; } ;


 int ETIMEDOUT ;
 int s5c73m3_read (struct s5c73m3*,int,scalar_t__*) ;
 int usleep_range (unsigned int,unsigned int) ;

__attribute__((used)) static int s5c73m3_system_status_wait(struct s5c73m3 *state, u32 value,
          unsigned int delay, unsigned int steps)
{
 u16 reg = 0;

 while (steps-- > 0) {
  int ret = s5c73m3_read(state, 0x30100010, &reg);
  if (ret < 0)
   return ret;
  if (reg == value)
   return 0;
  usleep_range(delay, delay + 25);
 }
 return -ETIMEDOUT;
}
