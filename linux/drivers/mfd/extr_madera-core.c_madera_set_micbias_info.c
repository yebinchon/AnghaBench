
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera {int type; int num_micbias; int* num_childbias; } ;
__attribute__((used)) static void madera_set_micbias_info(struct madera *madera)
{




 switch (madera->type) {
 case 135:
  madera->num_micbias = 1;
  madera->num_childbias[0] = 3;
  return;
 case 134:
  madera->num_micbias = 2;
  madera->num_childbias[0] = 2;
  madera->num_childbias[1] = 2;
  return;
 case 133:
 case 128:
  madera->num_micbias = 4;

  return;
 case 132:
 case 131:
  madera->num_micbias = 2;
  madera->num_childbias[0] = 4;
  madera->num_childbias[1] = 4;
  return;
 case 136:
 case 130:
 case 129:
  madera->num_micbias = 2;
  madera->num_childbias[0] = 4;
  madera->num_childbias[1] = 2;
  return;
 default:
  return;
 }
}
