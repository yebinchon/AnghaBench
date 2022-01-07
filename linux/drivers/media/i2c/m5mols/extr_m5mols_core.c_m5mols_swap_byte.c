
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int __be32 ;
typedef int __be16 ;


 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static u32 m5mols_swap_byte(u8 *data, u8 length)
{
 if (length == 1)
  return *data;
 else if (length == 2)
  return be16_to_cpu(*((__be16 *)data));
 else
  return be32_to_cpu(*((__be32 *)data));
}
