
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __raw_readl (int *) ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static inline u32 greth_read_bd(u32 *bd)
{
 return be32_to_cpu(__raw_readl(bd));
}
