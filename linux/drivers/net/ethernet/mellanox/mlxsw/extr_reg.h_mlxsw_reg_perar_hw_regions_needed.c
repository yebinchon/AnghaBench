
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DIV_ROUND_UP (unsigned int,int) ;

__attribute__((used)) static inline unsigned int
mlxsw_reg_perar_hw_regions_needed(unsigned int block_num)
{
 return DIV_ROUND_UP(block_num, 4);
}
