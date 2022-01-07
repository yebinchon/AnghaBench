
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
 int wm8994_readable_register (struct device*,unsigned int) ;

__attribute__((used)) static bool wm8958_readable_register(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 208:
 case 227:
 case 209:
 case 205:
 case 207:
 case 206:
 case 195:
 case 196:
 case 197:
 case 194:
 case 201:
 case 200:
 case 199:
 case 202:
 case 228:
 case 212:
 case 204:
 case 214:
 case 210:
 case 213:
 case 211:
 case 223:
 case 221:
 case 224:
 case 225:
 case 219:
 case 222:
 case 220:
 case 226:
 case 218:
 case 203:
 case 198:
 case 217:
 case 216:
 case 215:
 case 192:
 case 193:
 case 190:
 case 191:
 case 188:
 case 189:
 case 186:
 case 187:
 case 184:
 case 185:
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
 case 165:
 case 164:
 case 163:
 case 162:
 case 161:
 case 160:
 case 159:
 case 158:
 case 179:
 case 178:
 case 177:
 case 176:
 case 153:
 case 152:
 case 151:
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
 case 140:
 case 139:
 case 138:
 case 137:
 case 136:
 case 157:
 case 156:
 case 155:
 case 154:
 case 181:
 case 180:
 case 183:
 case 182:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  return 1;
 default:
  return wm8994_readable_register(dev, reg);
 }
}
