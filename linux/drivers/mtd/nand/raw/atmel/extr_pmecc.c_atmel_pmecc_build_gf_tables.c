
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_pmecc_gf_tables {unsigned int* alpha_to; unsigned int* index_of; } ;


 int BIT (int) ;
 int EINVAL ;
 int deg (unsigned int) ;

__attribute__((used)) static int atmel_pmecc_build_gf_tables(int mm, unsigned int poly,
           struct atmel_pmecc_gf_tables *gf_tables)
{
 unsigned int i, x = 1;
 const unsigned int k = BIT(deg(poly));
 unsigned int nn = BIT(mm) - 1;


 if (k != (1u << mm))
  return -EINVAL;

 for (i = 0; i < nn; i++) {
  gf_tables->alpha_to[i] = x;
  gf_tables->index_of[x] = i;
  if (i && (x == 1))

   return -EINVAL;
  x <<= 1;
  if (x & k)
   x ^= poly;
 }
 gf_tables->alpha_to[nn] = 1;
 gf_tables->index_of[0] = 0;

 return 0;
}
