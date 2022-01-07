
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_blk_data {int reset_done; } ;



__attribute__((used)) static inline void mmc_blk_reset_success(struct mmc_blk_data *md, int type)
{
 md->reset_done &= ~type;
}
