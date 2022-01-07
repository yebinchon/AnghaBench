
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,char*,scalar_t__) ;
 scalar_t__ bnx2x_flr_clnup_reg_poll (struct bnx2x*,scalar_t__,int ,scalar_t__) ;

int bnx2x_flr_clnup_poll_hw_counter(struct bnx2x *bp, u32 reg,
        char *msg, u32 poll_cnt)
{
 u32 val = bnx2x_flr_clnup_reg_poll(bp, reg, 0, poll_cnt);
 if (val != 0) {
  BNX2X_ERR("%s usage count=%d\n", msg, val);
  return 1;
 }
 return 0;
}
