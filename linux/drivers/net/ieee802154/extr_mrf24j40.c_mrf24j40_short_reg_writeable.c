
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
__attribute__((used)) static bool
mrf24j40_short_reg_writeable(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 149:
 case 152:
 case 153:
 case 146:
 case 147:
 case 175:
 case 174:
 case 173:
 case 172:
 case 171:
 case 170:
 case 169:
 case 168:
 case 150:
 case 157:
 case 133:
 case 183:
 case 167:
 case 139:
 case 140:
 case 156:
 case 155:
 case 154:
 case 137:
 case 132:
 case 135:
 case 134:
 case 166:
 case 165:
 case 164:
 case 131:
 case 128:
 case 163:
 case 136:
 case 162:
 case 129:
 case 159:
 case 160:
 case 141:
 case 145:
 case 144:
 case 130:
 case 148:
 case 158:
 case 138:
 case 161:
 case 151:
 case 143:
 case 142:
 case 182:
 case 181:
 case 180:
 case 179:
 case 178:
 case 177:
 case 176:
  return 1;
 default:
  return 0;
 }
}
