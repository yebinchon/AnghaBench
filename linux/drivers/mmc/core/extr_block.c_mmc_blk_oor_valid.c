
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sbc; } ;
struct mmc_blk_request {TYPE_1__ mrq; } ;



__attribute__((used)) static inline bool mmc_blk_oor_valid(struct mmc_blk_request *brq)
{
 return !!brq->mrq.sbc;
}
