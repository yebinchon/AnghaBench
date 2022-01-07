
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_mpt_entry {int pd_flags; } ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static u32 mr_get_pd(struct mlx4_mpt_entry *mpt)
{
 return be32_to_cpu(mpt->pd_flags) & 0x00ffffff;
}
