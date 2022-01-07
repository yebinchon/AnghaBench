
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* bytes; } ;
struct CHIPSTATE {TYPE_1__ shadow; } ;


 int TDA8425_S1 ;
 int TDA8425_S1_ML_SOUND_A ;
 int TDA8425_S1_ML_SOUND_B ;
 int TDA8425_S1_ML_STEREO ;
 int TDA8425_S1_STEREO_LINEAR ;
 int TDA8425_S1_STEREO_MONO ;
 int TDA8425_S1_STEREO_PSEUDO ;
 int TDA8425_S1_STEREO_SPATIAL ;





 int chip_write (struct CHIPSTATE*,int,int) ;

__attribute__((used)) static void tda8425_setaudmode(struct CHIPSTATE *chip, int mode)
{
 int s1 = chip->shadow.bytes[TDA8425_S1+1] & 0xe1;

 switch (mode) {
 case 132:
  s1 |= TDA8425_S1_ML_SOUND_A;
  s1 |= TDA8425_S1_STEREO_PSEUDO;
  break;
 case 130:
  s1 |= TDA8425_S1_ML_SOUND_B;
  s1 |= TDA8425_S1_STEREO_PSEUDO;
  break;
 case 131:
  s1 |= TDA8425_S1_ML_STEREO;
  s1 |= TDA8425_S1_STEREO_LINEAR;
  break;
 case 129:
  s1 |= TDA8425_S1_ML_STEREO;
  s1 |= TDA8425_S1_STEREO_MONO;
  break;
 case 128:
  s1 |= TDA8425_S1_ML_STEREO;
  s1 |= TDA8425_S1_STEREO_SPATIAL;
  break;
 default:
  return;
 }
 chip_write(chip,TDA8425_S1,s1);
}
