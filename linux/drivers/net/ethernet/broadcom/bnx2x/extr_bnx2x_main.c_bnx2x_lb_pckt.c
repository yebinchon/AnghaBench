
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int NIG_REG_DEBUG_PACKET_LB ;
 int REG_WR_DMAE (struct bnx2x*,int ,int*,int) ;

__attribute__((used)) static void bnx2x_lb_pckt(struct bnx2x *bp)
{
 u32 wb_write[3];


 wb_write[0] = 0x55555555;
 wb_write[1] = 0x55555555;
 wb_write[2] = 0x20;
 REG_WR_DMAE(bp, NIG_REG_DEBUG_PACKET_LB, wb_write, 3);


 wb_write[0] = 0x09000000;
 wb_write[1] = 0x55555555;
 wb_write[2] = 0x10;
 REG_WR_DMAE(bp, NIG_REG_DEBUG_PACKET_LB, wb_write, 3);
}
