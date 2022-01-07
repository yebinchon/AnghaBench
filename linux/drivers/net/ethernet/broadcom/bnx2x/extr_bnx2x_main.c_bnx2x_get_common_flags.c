
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_fastpath {int dummy; } ;
struct bnx2x {int flags; } ;


 int BNX2X_Q_FLG_ACTIVE ;
 int BNX2X_Q_FLG_PCSUM_ON_PKT ;
 int BNX2X_Q_FLG_STATS ;
 int BNX2X_Q_FLG_TUN_INC_INNER_IP_ID ;
 int BNX2X_Q_FLG_TX_SEC ;
 int BNX2X_Q_FLG_TX_SWITCH ;
 int BNX2X_Q_FLG_ZERO_STATS ;
 int TX_SWITCHING ;
 int __set_bit (int ,unsigned long*) ;

__attribute__((used)) static unsigned long bnx2x_get_common_flags(struct bnx2x *bp,
         struct bnx2x_fastpath *fp,
         bool zero_stats)
{
 unsigned long flags = 0;


 __set_bit(BNX2X_Q_FLG_ACTIVE, &flags);






 __set_bit(BNX2X_Q_FLG_STATS, &flags);
 if (zero_stats)
  __set_bit(BNX2X_Q_FLG_ZERO_STATS, &flags);

 if (bp->flags & TX_SWITCHING)
  __set_bit(BNX2X_Q_FLG_TX_SWITCH, &flags);

 __set_bit(BNX2X_Q_FLG_PCSUM_ON_PKT, &flags);
 __set_bit(BNX2X_Q_FLG_TUN_INC_INNER_IP_ID, &flags);





 return flags;
}
