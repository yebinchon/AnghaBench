
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct s5k5baf {int error; int sd; } ;


 int ETIMEDOUT ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int s5k5baf_read (struct s5k5baf*,int ) ;
 int s5k5baf_write (struct s5k5baf*,int ,int) ;
 scalar_t__ time_is_after_jiffies (unsigned long) ;
 int usleep_range (int,int) ;
 int v4l2_err (int *,char*,int ) ;

__attribute__((used)) static void s5k5baf_synchronize(struct s5k5baf *state, int timeout, u16 addr)
{
 unsigned long end = jiffies + msecs_to_jiffies(timeout);
 u16 reg;

 s5k5baf_write(state, addr, 1);
 do {
  reg = s5k5baf_read(state, addr);
  if (state->error || !reg)
   return;
  usleep_range(5000, 10000);
 } while (time_is_after_jiffies(end));

 v4l2_err(&state->sd, "timeout on register synchronize (%#x)\n", addr);
 state->error = -ETIMEDOUT;
}
