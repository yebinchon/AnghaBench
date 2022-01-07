
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ nand_id_has_period (scalar_t__*,int,int) ;

__attribute__((used)) static int nand_id_len(u8 *id_data, int arrlen)
{
 int last_nonzero, period;


 for (last_nonzero = arrlen - 1; last_nonzero >= 0; last_nonzero--)
  if (id_data[last_nonzero])
   break;


 if (last_nonzero < 0)
  return 0;


 for (period = 1; period < arrlen; period++)
  if (nand_id_has_period(id_data, arrlen, period))
   break;


 if (period < arrlen)
  return period;


 if (last_nonzero < arrlen - 1)
  return last_nonzero + 1;


 return arrlen;
}
