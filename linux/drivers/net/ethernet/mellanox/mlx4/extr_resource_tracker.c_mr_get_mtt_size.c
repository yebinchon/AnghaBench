
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_mpt_entry {int mtt_sz; } ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static int mr_get_mtt_size(struct mlx4_mpt_entry *mpt)
{
 return be32_to_cpu(mpt->mtt_sz);
}
