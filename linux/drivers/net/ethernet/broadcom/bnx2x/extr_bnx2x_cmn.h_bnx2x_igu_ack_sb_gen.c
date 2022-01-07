
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct igu_regular {int sb_id_and_flags; int member_0; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*,int,int ) ;
 int IGU_REGULAR_BUPDATE_SHIFT ;
 int IGU_REGULAR_ENABLE_INT_SHIFT ;
 int IGU_REGULAR_SB_INDEX_SHIFT ;
 int IGU_REGULAR_SEGMENT_ACCESS_SHIFT ;
 int NETIF_MSG_INTR ;
 int REG_WR (struct bnx2x*,int ,int) ;
 int barrier () ;

__attribute__((used)) static inline void bnx2x_igu_ack_sb_gen(struct bnx2x *bp, u8 igu_sb_id,
     u8 segment, u16 index, u8 op,
     u8 update, u32 igu_addr)
{
 struct igu_regular cmd_data = {0};

 cmd_data.sb_id_and_flags =
   ((index << IGU_REGULAR_SB_INDEX_SHIFT) |
    (segment << IGU_REGULAR_SEGMENT_ACCESS_SHIFT) |
    (update << IGU_REGULAR_BUPDATE_SHIFT) |
    (op << IGU_REGULAR_ENABLE_INT_SHIFT));

 DP(NETIF_MSG_INTR, "write 0x%08x to IGU addr 0x%x\n",
    cmd_data.sb_id_and_flags, igu_addr);
 REG_WR(bp, igu_addr, cmd_data.sb_id_and_flags);


 barrier();
}
