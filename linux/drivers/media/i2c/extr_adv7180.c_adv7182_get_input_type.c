
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum adv7182_input_type { ____Placeholder_adv7182_input_type } adv7182_input_type ;
 int ADV7182_INPUT_TYPE_CVBS ;
 int ADV7182_INPUT_TYPE_DIFF_CVBS ;
 int ADV7182_INPUT_TYPE_SVIDEO ;
 int ADV7182_INPUT_TYPE_YPBPR ;



__attribute__((used)) static enum adv7182_input_type adv7182_get_input_type(unsigned int input)
{
 switch (input) {
 case 145:
 case 144:
 case 143:
 case 142:
 case 141:
 case 140:
 case 139:
 case 138:
  return ADV7182_INPUT_TYPE_CVBS;
 case 133:
 case 132:
 case 131:
 case 130:
  return ADV7182_INPUT_TYPE_SVIDEO;
 case 129:
 case 128:
  return ADV7182_INPUT_TYPE_YPBPR;
 case 137:
 case 136:
 case 135:
 case 134:
  return ADV7182_INPUT_TYPE_DIFF_CVBS;
 default:
  return 0;
 }
}
