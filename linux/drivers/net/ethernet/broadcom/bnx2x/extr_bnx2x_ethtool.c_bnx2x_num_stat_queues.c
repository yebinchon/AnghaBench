
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 int BNX2X_NUM_ETH_QUEUES (struct bnx2x*) ;

__attribute__((used)) static int bnx2x_num_stat_queues(struct bnx2x *bp)
{
 return BNX2X_NUM_ETH_QUEUES(bp);
}
