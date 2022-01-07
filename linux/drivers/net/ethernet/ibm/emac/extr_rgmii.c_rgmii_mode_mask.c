
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BUG () ;
 int RGMII_FER_GMII (int) ;
 int RGMII_FER_MII (int) ;
 int RGMII_FER_RGMII (int) ;
 int RGMII_FER_RTBI (int) ;
 int RGMII_FER_TBI (int) ;

__attribute__((used)) static inline u32 rgmii_mode_mask(int mode, int input)
{
 switch (mode) {
 case 133:
 case 132:
 case 131:
 case 130:
  return RGMII_FER_RGMII(input);
 case 128:
  return RGMII_FER_TBI(input);
 case 135:
  return RGMII_FER_GMII(input);
 case 134:
  return RGMII_FER_MII(input);
 case 129:
  return RGMII_FER_RTBI(input);
 default:
  BUG();
 }
}
