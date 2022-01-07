
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __raw_writel (int ,int *) ;
 int cpu_to_be32 (int ) ;

__attribute__((used)) static inline void greth_write_bd(u32 *bd, u32 val)
{
 __raw_writel(cpu_to_be32(val), bd);
}
