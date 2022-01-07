
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static void put_htbl(u8 *p, const u8 *htbl, unsigned int len)
{
 unsigned int i, j;

 for (i = 0; i < len; i += 4)
  for (j = 0; j < 4 && (i + j) < len; ++j)
   p[i + j] = htbl[i + 3 - j];
}
