
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EILSEQ ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEDIUM ;
 int ETIMEDOUT ;
__attribute__((used)) static int vub300_response_error(u8 error_code)
{
 switch (error_code) {
 case 133:
 case 146:
 case 141:
  return -ETIMEDOUT;
 case 129:
 case 134:
 case 131:
 case 130:
 case 132:
 case 128:
 case 148:
 case 143:
 case 149:
 case 144:
 case 136:
 case 138:
 case 137:
 case 147:
 case 142:
 case 145:
 case 140:
  return -EILSEQ;
 case 33:
  return -EILSEQ;
 case 139:
  return -EINVAL;
 case 135:
  return -ENOMEDIUM;
 default:
  return -ENODEV;
 }
}
