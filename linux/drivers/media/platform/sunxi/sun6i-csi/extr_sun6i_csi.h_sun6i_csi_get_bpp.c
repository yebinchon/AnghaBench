
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN (int,char*,unsigned int) ;

__attribute__((used)) static inline int sun6i_csi_get_bpp(unsigned int pixformat)
{
 switch (pixformat) {
 case 144:
 case 141:
 case 138:
 case 135:
 case 155:
  return 8;
 case 146:
 case 143:
 case 140:
 case 137:
  return 10;
 case 145:
 case 142:
 case 139:
 case 136:
 case 156:
 case 154:
 case 152:
 case 132:
 case 129:
  return 12;
 case 130:
 case 128:
 case 134:
 case 133:
 case 153:
 case 151:
 case 131:
 case 148:
 case 147:
  return 16;
 case 150:
 case 158:
  return 24;
 case 149:
 case 157:
  return 32;
 default:
  WARN(1, "Unsupported pixformat: 0x%x\n", pixformat);
  break;
 }

 return 0;
}
