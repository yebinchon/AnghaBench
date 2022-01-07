
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_blk_request {int dummy; } ;


 int CMD_ERRORS ;
 int CMD_ERRORS_EXCL_OOR ;
 scalar_t__ mmc_blk_oor_valid (struct mmc_blk_request*) ;

__attribute__((used)) static inline u32 mmc_blk_stop_err_bits(struct mmc_blk_request *brq)
{
 return mmc_blk_oor_valid(brq) ? CMD_ERRORS : CMD_ERRORS_EXCL_OOR;
}
