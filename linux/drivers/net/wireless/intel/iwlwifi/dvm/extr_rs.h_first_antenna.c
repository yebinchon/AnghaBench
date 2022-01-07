
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ANT_A ;
 int ANT_B ;
 int ANT_C ;

__attribute__((used)) static inline u8 first_antenna(u8 mask)
{
 if (mask & ANT_A)
  return ANT_A;
 if (mask & ANT_B)
  return ANT_B;
 return ANT_C;
}
