
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_cq_context {int mtt_base_addr_l; } ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static int cq_get_mtt_addr(struct mlx4_cq_context *cqc)
{
 return be32_to_cpu(cqc->mtt_base_addr_l) & 0xfffffff8;
}
