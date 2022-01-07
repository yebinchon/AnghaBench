
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {scalar_t__ panic; } ;


 int BNX2X_ERR (char*,int) ;
 int BNX2X_MSG_SP ;
 scalar_t__ CHIP_REV_IS_EMUL (struct bnx2x*) ;
 int DP (int ,char*,int) ;
 int EBUSY ;
 int EIO ;
 int bnx2x_panic () ;
 int might_sleep () ;
 int test_bit (int,unsigned long*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static inline int bnx2x_state_wait(struct bnx2x *bp, int state,
       unsigned long *pstate)
{

 int cnt = 5000;

 if (CHIP_REV_IS_EMUL(bp))
  cnt *= 20;

 DP(BNX2X_MSG_SP, "waiting for state to become %d\n", state);

 might_sleep();
 while (cnt--) {
  if (!test_bit(state, pstate)) {



   return 0;
  }

  usleep_range(1000, 2000);

  if (bp->panic)
   return -EIO;
 }


 BNX2X_ERR("timeout waiting for state %d\n", state);




 return -EBUSY;
}
