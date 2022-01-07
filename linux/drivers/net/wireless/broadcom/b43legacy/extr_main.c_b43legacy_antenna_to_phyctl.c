
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;




 int B43legacy_TX4_PHY_ANT0 ;
 int B43legacy_TX4_PHY_ANT1 ;
 int B43legacy_TX4_PHY_ANTLAST ;

__attribute__((used)) static u16 b43legacy_antenna_to_phyctl(int antenna)
{
 switch (antenna) {
 case 129:
  return B43legacy_TX4_PHY_ANT0;
 case 128:
  return B43legacy_TX4_PHY_ANT1;
 }
 return B43legacy_TX4_PHY_ANTLAST;
}
