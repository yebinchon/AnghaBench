
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct si4713_device {int dummy; } ;
typedef int s32 ;


 int ARRAY_SIZE (unsigned long*) ;
 int ATTACK_TIME_UNIT ;
 int EINVAL ;
 int SI4713_TX_ACOMP_ATTACK_TIME ;
 int SI4713_TX_ACOMP_ENABLE ;
 int SI4713_TX_ACOMP_GAIN ;
 int SI4713_TX_ACOMP_RELEASE_TIME ;
 int SI4713_TX_ACOMP_THRESHOLD ;
 int SI4713_TX_AUDIO_DEVIATION ;
 int SI4713_TX_COMPONENT_ENABLE ;
 int SI4713_TX_LIMITER_RELEASE_TIME ;
 int SI4713_TX_PILOT_DEVIATION ;
 int SI4713_TX_PILOT_FREQUENCY ;
 int SI4713_TX_PREEMPHASIS ;
 int SI4713_TX_RDS_DEVIATION ;
 int SI4713_TX_RDS_PI ;
 int SI4713_TX_RDS_PS_MISC ;
 unsigned long* acomp_rtimes ;
 unsigned long* limiter_times ;
 unsigned long* preemphasis_values ;

__attribute__((used)) static int si4713_choose_econtrol_action(struct si4713_device *sdev, u32 id,
  s32 *bit, s32 *mask, u16 *property, int *mul,
  unsigned long **table, int *size)
{
 s32 rval = 0;

 switch (id) {

 case 132:
  *property = SI4713_TX_RDS_PI;
  *mul = 1;
  break;
 case 145:
  *property = SI4713_TX_ACOMP_THRESHOLD;
  *mul = 1;
  break;
 case 147:
  *property = SI4713_TX_ACOMP_GAIN;
  *mul = 1;
  break;
 case 139:
  *property = SI4713_TX_PILOT_FREQUENCY;
  *mul = 1;
  break;
 case 149:
  *property = SI4713_TX_ACOMP_ATTACK_TIME;
  *mul = ATTACK_TIME_UNIT;
  break;
 case 141:
  *property = SI4713_TX_PILOT_DEVIATION;
  *mul = 10;
  break;
 case 144:
  *property = SI4713_TX_AUDIO_DEVIATION;
  *mul = 10;
  break;
 case 136:
  *property = SI4713_TX_RDS_DEVIATION;
  *mul = 1;
  break;

 case 131:
  *property = SI4713_TX_RDS_PS_MISC;
  *bit = 5;
  *mask = 0x1F << 5;
  break;
 case 135:
  *property = SI4713_TX_RDS_PS_MISC;
  *bit = 15;
  *mask = 1 << 15;
  break;
 case 137:
  *property = SI4713_TX_RDS_PS_MISC;
  *bit = 14;
  *mask = 1 << 14;
  break;
 case 138:
  *property = SI4713_TX_RDS_PS_MISC;
  *bit = 13;
  *mask = 1 << 13;
  break;
 case 134:
  *property = SI4713_TX_RDS_PS_MISC;
  *bit = 12;
  *mask = 1 << 12;
  break;
 case 129:
  *property = SI4713_TX_RDS_PS_MISC;
  *bit = 10;
  *mask = 1 << 10;
  break;
 case 130:
  *property = SI4713_TX_RDS_PS_MISC;
  *bit = 4;
  *mask = 1 << 4;
  break;
 case 133:
  *property = SI4713_TX_RDS_PS_MISC;
  *bit = 3;
  *mask = 1 << 3;
  break;
 case 143:
  *property = SI4713_TX_ACOMP_ENABLE;
  *bit = 1;
  *mask = 1 << 1;
  break;
 case 148:
  *property = SI4713_TX_ACOMP_ENABLE;
  *bit = 0;
  *mask = 1 << 0;
  break;
 case 140:
  *property = SI4713_TX_COMPONENT_ENABLE;
  *bit = 0;
  *mask = 1 << 0;
  break;

 case 142:
  *property = SI4713_TX_LIMITER_RELEASE_TIME;
  *table = limiter_times;
  *size = ARRAY_SIZE(limiter_times);
  break;
 case 146:
  *property = SI4713_TX_ACOMP_RELEASE_TIME;
  *table = acomp_rtimes;
  *size = ARRAY_SIZE(acomp_rtimes);
  break;
 case 128:
  *property = SI4713_TX_PREEMPHASIS;
  *table = preemphasis_values;
  *size = ARRAY_SIZE(preemphasis_values);
  break;

 default:
  rval = -EINVAL;
  break;
 }

 return rval;
}
