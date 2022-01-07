
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* u64; } ;
typedef TYPE_1__ efx_oword_t ;



__attribute__((used)) static bool efx_masked_compare_oword(const efx_oword_t *a, const efx_oword_t *b,
         const efx_oword_t *mask)
{
 return ((a->u64[0] ^ b->u64[0]) & mask->u64[0]) ||
  ((a->u64[1] ^ b->u64[1]) & mask->u64[1]);
}
