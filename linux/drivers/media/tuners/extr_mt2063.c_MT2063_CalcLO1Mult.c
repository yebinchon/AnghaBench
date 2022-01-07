
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MT2063_fLO_FractionalTerm (int,int,int) ;

__attribute__((used)) static u32 MT2063_CalcLO1Mult(u32 *Div,
         u32 *FracN,
         u32 f_LO,
         u32 f_LO_Step, u32 f_Ref)
{

 *Div = f_LO / f_Ref;


 *FracN =
     (64 * (((f_LO % f_Ref) + (f_LO_Step / 2)) / f_LO_Step) +
      (f_Ref / f_LO_Step / 2)) / (f_Ref / f_LO_Step);

 return (f_Ref * (*Div)) + MT2063_fLO_FractionalTerm(f_Ref, *FracN, 64);
}
