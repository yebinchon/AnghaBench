
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vf_valid; } ;
struct hc_sp_status_block_data {TYPE_1__ p_func; int state; } ;
struct bnx2x {int dummy; } ;


 scalar_t__ BAR_CSTRORM_INTMEM ;
 int BP_FUNC (struct bnx2x*) ;
 scalar_t__ CSTORM_SP_STATUS_BLOCK_OFFSET (int) ;
 int CSTORM_SP_STATUS_BLOCK_SIZE ;
 scalar_t__ CSTORM_SP_SYNC_BLOCK_OFFSET (int) ;
 int CSTORM_SP_SYNC_BLOCK_SIZE ;
 int SB_DISABLED ;
 int bnx2x_fill (struct bnx2x*,scalar_t__,int ,int ) ;
 int bnx2x_wr_sp_sb_data (struct bnx2x*,struct hc_sp_status_block_data*) ;
 int memset (struct hc_sp_status_block_data*,int ,int) ;

__attribute__((used)) static void bnx2x_zero_sp_sb(struct bnx2x *bp)
{
 int func = BP_FUNC(bp);
 struct hc_sp_status_block_data sp_sb_data;
 memset(&sp_sb_data, 0, sizeof(struct hc_sp_status_block_data));

 sp_sb_data.state = SB_DISABLED;
 sp_sb_data.p_func.vf_valid = 0;

 bnx2x_wr_sp_sb_data(bp, &sp_sb_data);

 bnx2x_fill(bp, BAR_CSTRORM_INTMEM +
   CSTORM_SP_STATUS_BLOCK_OFFSET(func), 0,
   CSTORM_SP_STATUS_BLOCK_SIZE);
 bnx2x_fill(bp, BAR_CSTRORM_INTMEM +
   CSTORM_SP_SYNC_BLOCK_OFFSET(func), 0,
   CSTORM_SP_SYNC_BLOCK_SIZE);
}
