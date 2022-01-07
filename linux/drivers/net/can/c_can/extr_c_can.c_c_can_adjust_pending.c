
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int RECEIVE_OBJECT_BITS ;
 int fls (int) ;
 int hweight32 (int) ;

__attribute__((used)) static u32 c_can_adjust_pending(u32 pend)
{
 u32 weight, lasts;

 if (pend == RECEIVE_OBJECT_BITS)
  return pend;





 weight = hweight32(pend);
 lasts = fls(pend);


 if (lasts == weight)
  return pend;





 for (lasts--; pend & (1 << (lasts - 1)); lasts--);

 return pend & ~((1 << lasts) - 1);
}
