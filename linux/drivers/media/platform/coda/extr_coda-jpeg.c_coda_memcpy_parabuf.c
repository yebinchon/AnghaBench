
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct coda_memcpy_desc {int offset; int len; int * src; } ;


 int swab32 (int const) ;

__attribute__((used)) static void coda_memcpy_parabuf(void *parabuf,
    const struct coda_memcpy_desc *desc)
{
 u32 *dst = parabuf + desc->offset;
 const u32 *src = desc->src;
 int len = desc->len / 4;
 int i;

 for (i = 0; i < len; i += 2) {
  dst[i + 1] = swab32(src[i]);
  dst[i] = swab32(src[i + 1]);
 }
}
