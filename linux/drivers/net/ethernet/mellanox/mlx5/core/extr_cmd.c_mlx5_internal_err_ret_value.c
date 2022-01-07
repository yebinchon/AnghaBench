
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct mlx5_core_dev {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int MLX5_CMD_STAT_OK ;
 scalar_t__ MLX5_DRIVER_STATUS_ABORTED ;
 scalar_t__ MLX5_DRIVER_SYND ;
 int mlx5_core_err (struct mlx5_core_dev*,char*,int) ;

__attribute__((used)) static int mlx5_internal_err_ret_value(struct mlx5_core_dev *dev, u16 op,
           u32 *synd, u8 *status)
{
 *synd = 0;
 *status = 0;

 switch (op) {
 case 128:
 case 221:
 case 207:
 case 239:
 case 244:
 case 246:
 case 236:
 case 238:
 case 230:
 case 224:
 case 223:
 case 245:
 case 253:
 case 232:
 case 237:
 case 254:
 case 251:
 case 222:
 case 250:
 case 252:
 case 247:
 case 248:
 case 240:
 case 225:
 case 229:
 case 231:
 case 234:
 case 235:
 case 228:
 case 233:
 case 242:
 case 243:
 case 249:
 case 258:
 case 302:
 case 301:
 case 198:
 case 202:
 case 139:
 case 138:
 case 255:
 case 256:
 case 217:
 case 241:
 case 257:
 case 187:
 case 179:
  return MLX5_CMD_STAT_OK;

 case 172:
 case 186:
 case 209:
 case 219:
 case 162:
 case 137:
 case 168:
 case 136:
 case 275:
 case 164:
 case 153:
 case 280:
 case 180:
 case 213:
 case 282:
 case 182:
 case 204:
 case 272:
 case 142:
 case 210:
 case 141:
 case 140:
 case 129:
 case 161:
 case 130:
 case 211:
 case 274:
 case 266:
 case 151:
 case 287:
 case 260:
 case 145:
 case 286:
 case 259:
 case 144:
 case 285:
 case 281:
 case 220:
 case 181:
 case 289:
 case 146:
 case 190:
 case 178:
 case 203:
 case 163:
 case 157:
 case 131:
 case 171:
 case 200:
 case 170:
 case 169:
 case 148:
 case 147:
 case 293:
 case 160:
 case 133:
 case 288:
 case 132:
 case 159:
 case 268:
 case 154:
 case 194:
 case 273:
 case 294:
 case 291:
 case 283:
 case 300:
 case 284:
 case 212:
 case 208:
 case 165:
 case 134:
 case 188:
 case 290:
 case 292:
 case 183:
 case 205:
 case 185:
 case 206:
 case 184:
 case 299:
 case 135:
 case 167:
 case 276:
 case 199:
 case 166:
 case 261:
 case 265:
 case 192:
 case 150:
 case 267:
 case 193:
 case 152:
 case 270:
 case 196:
 case 156:
 case 271:
 case 197:
 case 158:
 case 264:
 case 191:
 case 149:
 case 269:
 case 195:
 case 155:

 case 278:
 case 175:
 case 279:
 case 176:
 case 174:
 case 298:
 case 177:
 case 295:
 case 296:
 case 218:
 case 216:
 case 215:
 case 214:
 case 277:
 case 201:
 case 173:
 case 263:
 case 227:
 case 262:
 case 226:
 case 297:
 case 189:
 case 143:
  *status = MLX5_DRIVER_STATUS_ABORTED;
  *synd = MLX5_DRIVER_SYND;
  return -EIO;
 default:
  mlx5_core_err(dev, "Unknown FW command (%d)\n", op);
  return -EINVAL;
 }
}
