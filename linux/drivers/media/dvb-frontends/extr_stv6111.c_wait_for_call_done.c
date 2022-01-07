
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct stv {int dummy; } ;


 int EIO ;
 int read_reg (struct stv*,int,int*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int wait_for_call_done(struct stv *state, u8 mask)
{
 int status = 0;
 u32 lock_retry_count = 10;

 while (lock_retry_count > 0) {
  u8 regval;

  status = read_reg(state, 9, &regval);
  if (status < 0)
   return status;

  if ((regval & mask) == 0)
   break;
  usleep_range(4000, 6000);
  lock_retry_count -= 1;

  status = -EIO;
 }
 return status;
}
