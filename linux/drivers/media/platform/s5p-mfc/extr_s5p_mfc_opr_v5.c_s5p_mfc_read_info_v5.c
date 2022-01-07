
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_2__ {scalar_t__ virt; } ;
struct s5p_mfc_ctx {TYPE_1__ shm; } ;


 int rmb () ;

__attribute__((used)) static unsigned int s5p_mfc_read_info_v5(struct s5p_mfc_ctx *ctx,
    unsigned long ofs)
{
 rmb();
 return *(u32 *)(ctx->shm.virt + ofs);
}
