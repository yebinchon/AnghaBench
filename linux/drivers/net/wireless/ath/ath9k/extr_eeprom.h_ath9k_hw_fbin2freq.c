
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int AR5416_BCHAN_UNUSED ;

__attribute__((used)) static inline u16 ath9k_hw_fbin2freq(u8 fbin, bool is2GHz)
{
 if (fbin == AR5416_BCHAN_UNUSED)
  return fbin;

 return (u16) ((is2GHz) ? (2300 + fbin) : (4800 + 5 * fbin));
}
