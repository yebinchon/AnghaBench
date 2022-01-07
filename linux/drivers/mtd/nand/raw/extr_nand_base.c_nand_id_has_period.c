
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



__attribute__((used)) static int nand_id_has_period(u8 *id_data, int arrlen, int period)
{
 int i, j;
 for (i = 0; i < period; i++)
  for (j = i + period; j < arrlen; j += period)
   if (id_data[i] != id_data[j])
    return 0;
 return 1;
}
