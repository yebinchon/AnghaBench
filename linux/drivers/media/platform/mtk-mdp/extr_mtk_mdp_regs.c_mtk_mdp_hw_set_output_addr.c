
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {TYPE_1__* vsi; } ;
struct mtk_mdp_ctx {TYPE_2__ vpu; } ;
struct mtk_mdp_addr {scalar_t__* addr; } ;
struct mdp_buffer {scalar_t__* addr_mva; } ;
struct TYPE_3__ {struct mdp_buffer dst_buffer; } ;


 int ARRAY_SIZE (scalar_t__*) ;

void mtk_mdp_hw_set_output_addr(struct mtk_mdp_ctx *ctx,
    struct mtk_mdp_addr *addr)
{
 struct mdp_buffer *dst_buf = &ctx->vpu.vsi->dst_buffer;
 int i;

 for (i = 0; i < ARRAY_SIZE(addr->addr); i++)
  dst_buf->addr_mva[i] = (uint64_t)addr->addr[i];
}
