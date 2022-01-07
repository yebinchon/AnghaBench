
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt2063_state {int* CTFiltMax; } ;



__attribute__((used)) static u32 FindClearTuneFilter(struct mt2063_state *state, u32 f_in)
{
 u32 RFBand;
 u32 idx;




 RFBand = 31;
 for (idx = 0; idx < 31; ++idx) {
  if (state->CTFiltMax[idx] >= f_in) {
   RFBand = idx;
   break;
  }
 }
 return RFBand;
}
