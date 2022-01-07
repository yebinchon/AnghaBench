
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int link_up; } ;
struct bnx2x {TYPE_1__ link_vars; } ;


 int BNX2X_MSG_ETHTOOL ;
 int DP (int ,char*) ;
 scalar_t__ bnx2x_link_test (struct bnx2x*,scalar_t__) ;
 int msleep (int) ;

__attribute__((used)) static void bnx2x_wait_for_link(struct bnx2x *bp, u8 link_up, u8 is_serdes)
{
 int cnt = 1400;

 if (link_up) {
  while (bnx2x_link_test(bp, is_serdes) && cnt--)
   msleep(20);

  if (cnt <= 0 && bnx2x_link_test(bp, is_serdes))
   DP(BNX2X_MSG_ETHTOOL, "Timeout waiting for link up\n");

  cnt = 1400;
  while (!bp->link_vars.link_up && cnt--)
   msleep(20);

  if (cnt <= 0 && !bp->link_vars.link_up)
   DP(BNX2X_MSG_ETHTOOL,
      "Timeout waiting for link init\n");
 }
}
