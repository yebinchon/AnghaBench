
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
__attribute__((used)) static bool wm5102_volatile_register(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 132:
 case 189:
 case 131:
 case 130:
 case 129:
 case 128:
 case 138:
 case 134:
 case 133:
 case 137:
 case 136:
 case 135:
 case 162:
 case 195:
 case 194:
 case 193:
 case 192:
 case 191:
 case 190:
 case 163:
 case 150:
 case 149:
 case 148:
 case 147:
 case 146:
 case 145:
 case 144:
 case 143:
 case 142:
 case 141:
 case 157:
 case 156:
 case 155:
 case 154:
 case 153:
 case 152:
 case 151:
 case 140:
 case 196:
 case 199:
 case 198:
 case 197:
 case 188:
 case 176:
 case 175:
 case 174:
 case 173:
 case 172:
 case 171:
 case 170:
 case 169:
 case 168:
 case 167:
 case 166:
 case 187:
 case 186:
 case 185:
 case 184:
 case 183:
 case 182:
 case 165:
 case 164:
 case 181:
 case 180:
 case 179:
 case 178:
 case 177:
 case 160:
 case 159:
 case 161:
 case 158:
 case 139:
  return 1;
 default:
  if ((reg >= 0x100000 && reg < 0x106000) ||
      (reg >= 0x180000 && reg < 0x180800) ||
      (reg >= 0x190000 && reg < 0x194800) ||
      (reg >= 0x1a8000 && reg < 0x1a9800))
   return 1;
  else
   return 0;
 }
}
