
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct bnx2x {int dummy; } ;


 int BNX2X_BTR ;
 int BP_PORT (struct bnx2x*) ;
 int storm_memset_hc_disable (struct bnx2x*,int,int,int,int) ;
 int storm_memset_hc_timeout (struct bnx2x*,int,int,int,int) ;

void bnx2x_update_coalesce_sb_index(struct bnx2x *bp, u8 fw_sb_id,
        u8 sb_index, u8 disable, u16 usec)
{
 int port = BP_PORT(bp);
 u8 ticks = usec / BNX2X_BTR;

 storm_memset_hc_timeout(bp, port, fw_sb_id, sb_index, ticks);

 disable = disable ? 1 : (usec ? 0 : 1);
 storm_memset_hc_disable(bp, port, fw_sb_id, sb_index, disable);
}
