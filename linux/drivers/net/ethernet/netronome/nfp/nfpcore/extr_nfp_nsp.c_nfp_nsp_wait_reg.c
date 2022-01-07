
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef unsigned long u32 ;
struct nfp_cpp {int dummy; } ;


 int ETIMEDOUT ;
 unsigned long HZ ;
 unsigned long jiffies ;
 int msleep (int) ;
 int nfp_cpp_readq (struct nfp_cpp*,unsigned long,int,int*) ;
 scalar_t__ time_after (unsigned long const,unsigned long const) ;

__attribute__((used)) static int
nfp_nsp_wait_reg(struct nfp_cpp *cpp, u64 *reg, u32 nsp_cpp, u64 addr,
   u64 mask, u64 val, u32 timeout_sec)
{
 const unsigned long wait_until = jiffies + timeout_sec * HZ;
 int err;

 for (;;) {
  const unsigned long start_time = jiffies;

  err = nfp_cpp_readq(cpp, nsp_cpp, addr, reg);
  if (err < 0)
   return err;

  if ((*reg & mask) == val)
   return 0;

  msleep(25);

  if (time_after(start_time, wait_until))
   return -ETIMEDOUT;
 }
}
