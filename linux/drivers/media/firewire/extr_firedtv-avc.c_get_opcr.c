
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static inline u32 get_opcr(__be32 opcr, u32 mask, u32 shift)
{
 return (be32_to_cpu(opcr) >> shift) & mask;
}
