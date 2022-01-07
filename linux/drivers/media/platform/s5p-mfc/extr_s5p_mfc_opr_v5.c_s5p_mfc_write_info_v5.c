
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_2__ {scalar_t__ virt; } ;
struct s5p_mfc_ctx {TYPE_1__ shm; } ;


 int wmb () ;

__attribute__((used)) static void s5p_mfc_write_info_v5(struct s5p_mfc_ctx *ctx, unsigned int data,
   unsigned int ofs)
{
 *(u32 *)(ctx->shm.virt + ofs) = data;
 wmb();
}
