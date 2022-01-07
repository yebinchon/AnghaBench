
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct MT2063_AvoidSpursData_t {int bSpurAvoided; int nSpursFound; scalar_t__ maxH1; int bSpurPresent; int f_LO1; int f_in; int f_LO2; scalar_t__ f_out_bw; scalar_t__ f_if1_bw; int f_if1_Center; } ;


 void* IsSpurInBand (struct MT2063_AvoidSpursData_t*,int*,int*) ;
 int MT2063_AddExclZone (struct MT2063_AvoidSpursData_t*,int,int) ;
 int MT2063_ChooseFirstIF (struct MT2063_AvoidSpursData_t*) ;
 int MT2063_SPUR_CNT_MASK ;
 int MT2063_SPUR_PRESENT_ERR ;
 int MT2063_SPUR_SHIFT ;
 int dprintk (int,char*) ;

__attribute__((used)) static u32 MT2063_AvoidSpurs(struct MT2063_AvoidSpursData_t *pAS_Info)
{
 int status = 0;
 u32 fm, fp;
 pAS_Info->bSpurAvoided = 0;
 pAS_Info->nSpursFound = 0;

 dprintk(2, "\n");

 if (pAS_Info->maxH1 == 0)
  return 0;
 pAS_Info->bSpurPresent = IsSpurInBand(pAS_Info, &fm, &fp);
 if (pAS_Info->bSpurPresent) {
  u32 zfIF1 = pAS_Info->f_LO1 - pAS_Info->f_in;
  u32 zfLO1 = pAS_Info->f_LO1;
  u32 zfLO2 = pAS_Info->f_LO2;
  u32 delta_IF1;
  u32 new_IF1;




  do {
   pAS_Info->nSpursFound++;


   MT2063_AddExclZone(pAS_Info, zfIF1 - fm, zfIF1 + fp);


   new_IF1 = MT2063_ChooseFirstIF(pAS_Info);

   if (new_IF1 > zfIF1) {
    pAS_Info->f_LO1 += (new_IF1 - zfIF1);
    pAS_Info->f_LO2 += (new_IF1 - zfIF1);
   } else {
    pAS_Info->f_LO1 -= (zfIF1 - new_IF1);
    pAS_Info->f_LO2 -= (zfIF1 - new_IF1);
   }
   zfIF1 = new_IF1;

   if (zfIF1 > pAS_Info->f_if1_Center)
    delta_IF1 = zfIF1 - pAS_Info->f_if1_Center;
   else
    delta_IF1 = pAS_Info->f_if1_Center - zfIF1;

   pAS_Info->bSpurPresent = IsSpurInBand(pAS_Info, &fm, &fp);




  } while ((2 * delta_IF1 + pAS_Info->f_out_bw <= pAS_Info->f_if1_bw) && pAS_Info->bSpurPresent);






  if (pAS_Info->bSpurPresent == 1) {
   status |= MT2063_SPUR_PRESENT_ERR;
   pAS_Info->f_LO1 = zfLO1;
   pAS_Info->f_LO2 = zfLO2;
  } else
   pAS_Info->bSpurAvoided = 1;
 }

 status |=
     ((pAS_Info->
       nSpursFound << MT2063_SPUR_SHIFT) & MT2063_SPUR_CNT_MASK);

 return status;
}
