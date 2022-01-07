
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ANT_A ;
 int ANT_B ;
 int CHAIN_A ;
 int CHAIN_B ;
 int CHAIN_C ;

__attribute__((used)) static inline u8 find_first_chain(u8 mask)
{
 if (mask & ANT_A)
  return CHAIN_A;
 if (mask & ANT_B)
  return CHAIN_B;
 return CHAIN_C;
}
