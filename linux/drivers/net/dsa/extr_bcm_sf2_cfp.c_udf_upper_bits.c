
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GENMASK (unsigned int,int ) ;
 int UDFS_PER_SLICE ;

__attribute__((used)) static inline u32 udf_upper_bits(unsigned int num_udf)
{
 return GENMASK(num_udf - 1, 0) >> (UDFS_PER_SLICE - 1);
}
