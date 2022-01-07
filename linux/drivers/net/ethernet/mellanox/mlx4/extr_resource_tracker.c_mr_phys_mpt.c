
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_mpt_entry {int flags; } ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static int mr_phys_mpt(struct mlx4_mpt_entry *mpt)
{
 return (be32_to_cpu(mpt->flags) >> 9) & 1;
}
