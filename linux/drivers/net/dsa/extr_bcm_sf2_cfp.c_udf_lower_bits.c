
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int GENMASK (unsigned int,int ) ;

__attribute__((used)) static inline u32 udf_lower_bits(unsigned int num_udf)
{
 return (u8)GENMASK(num_udf - 1, 0);
}
