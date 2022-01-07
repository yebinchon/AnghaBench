
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_mpt_entry {int mtt_addr; } ;


 scalar_t__ be64_to_cpu (int ) ;

__attribute__((used)) static int mr_get_mtt_addr(struct mlx4_mpt_entry *mpt)
{
 return (int)be64_to_cpu(mpt->mtt_addr) & 0xfffffff8;
}
