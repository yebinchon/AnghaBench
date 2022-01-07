
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
 int B43_TXH_PHY_ANT0 ;
 int B43_TXH_PHY_ANT01AUTO ;
 int B43_TXH_PHY_ANT1 ;
 int B43_TXH_PHY_ANT2 ;
 int B43_TXH_PHY_ANT3 ;
 int B43_WARN_ON (int) ;

__attribute__((used)) static u16 b43_antenna_to_phyctl(int antenna)
{
 switch (antenna) {
 case 133:
  return B43_TXH_PHY_ANT0;
 case 132:
  return B43_TXH_PHY_ANT1;
 case 131:
  return B43_TXH_PHY_ANT2;
 case 130:
  return B43_TXH_PHY_ANT3;
 case 129:
 case 128:
  return B43_TXH_PHY_ANT01AUTO;
 }
 B43_WARN_ON(1);
 return 0;
}
