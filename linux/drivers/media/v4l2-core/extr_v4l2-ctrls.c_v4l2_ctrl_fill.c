
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int s64 ;
typedef enum v4l2_ctrl_type { ____Placeholder_v4l2_ctrl_type } v4l2_ctrl_type ;
 int V4L2_CTRL_FLAG_EXECUTE_ON_WRITE ;
 int V4L2_CTRL_FLAG_MODIFY_LAYOUT ;
 int V4L2_CTRL_FLAG_READ_ONLY ;
 int V4L2_CTRL_FLAG_SLIDER ;
 int V4L2_CTRL_FLAG_UPDATE ;
 int V4L2_CTRL_FLAG_VOLATILE ;
 int V4L2_CTRL_FLAG_WRITE_ONLY ;
 int V4L2_CTRL_TYPE_BITMASK ;
 int V4L2_CTRL_TYPE_BOOLEAN ;
 int V4L2_CTRL_TYPE_BUTTON ;
 int V4L2_CTRL_TYPE_CTRL_CLASS ;
 int V4L2_CTRL_TYPE_FWHT_PARAMS ;
 int V4L2_CTRL_TYPE_H264_DECODE_PARAMS ;
 int V4L2_CTRL_TYPE_H264_PPS ;
 int V4L2_CTRL_TYPE_H264_SCALING_MATRIX ;
 int V4L2_CTRL_TYPE_H264_SLICE_PARAMS ;
 int V4L2_CTRL_TYPE_H264_SPS ;
 int V4L2_CTRL_TYPE_INTEGER ;
 int V4L2_CTRL_TYPE_INTEGER64 ;
 int V4L2_CTRL_TYPE_INTEGER_MENU ;
 int V4L2_CTRL_TYPE_MENU ;
 int V4L2_CTRL_TYPE_MPEG2_QUANTIZATION ;
 int V4L2_CTRL_TYPE_MPEG2_SLICE_PARAMS ;
 int V4L2_CTRL_TYPE_STRING ;
 int V4L2_CTRL_TYPE_U16 ;
 int V4L2_CTRL_TYPE_U32 ;
 int V4L2_CTRL_TYPE_U8 ;
 int V4L2_CTRL_TYPE_VP8_FRAME_HEADER ;
 char* v4l2_ctrl_get_name (int) ;

void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
      s64 *min, s64 *max, u64 *step, s64 *def, u32 *flags)
{
 *name = v4l2_ctrl_get_name(id);
 *flags = 0;

 switch (id) {
 case 325:
 case 326:
 case 314:
 case 321:
 case 270:
 case 130:
 case 268:
 case 309:
 case 306:
 case 322:
 case 242:
 case 192:
 case 226:
 case 189:
 case 286:
 case 273:
 case 174:
 case 328:
 case 333:
 case 178:
 case 267:
 case 266:
 case 277:
 case 284:
 case 280:
 case 234:
 case 233:
 case 228:
 case 201:
 case 225:
 case 211:
 case 194:
 case 188:
 case 129:
 case 263:
 case 173:
 case 147:
 case 145:
 case 149:
 case 152:
 case 144:
 case 160:
 case 164:
 case 163:
 case 161:
 case 156:
 case 155:
 case 159:
 case 165:
 case 168:
 case 167:
 case 172:
  *type = V4L2_CTRL_TYPE_BOOLEAN;
  *min = 0;
  *max = *step = 1;
  break;
 case 142:
  *type = V4L2_CTRL_TYPE_INTEGER;
  *flags |= V4L2_CTRL_FLAG_MODIFY_LAYOUT;
  break;
 case 191:
 case 190:
  *type = V4L2_CTRL_TYPE_INTEGER;
  break;
 case 229:
 case 180:
 case 136:
 case 279:
 case 276:
 case 318:
 case 316:
 case 298:
  *type = V4L2_CTRL_TYPE_BUTTON;
  *flags |= V4L2_CTRL_FLAG_WRITE_ONLY |
     V4L2_CTRL_FLAG_EXECUTE_ON_WRITE;
  *min = *max = *step = *def = 0;
  break;
 case 175:
 case 241:
 case 248:
 case 247:
 case 246:
 case 245:
 case 253:
 case 244:
 case 243:
 case 249:
 case 252:
 case 250:
 case 251:
 case 230:
 case 237:
 case 236:
 case 239:
 case 238:
 case 287:
 case 319:
 case 307:
 case 315:
 case 132:
 case 281:
 case 278:
 case 209:
 case 193:
 case 222:
 case 220:
 case 219:
 case 217:
 case 210:
 case 215:
 case 221:
 case 224:
 case 212:
 case 200:
 case 199:
 case 196:
 case 195:
 case 258:
 case 260:
 case 285:
 case 140:
 case 290:
 case 289:
 case 291:
 case 294:
 case 296:
 case 138:
 case 304:
 case 134:
 case 184:
 case 186:
 case 185:
 case 301:
 case 205:
 case 207:
 case 208:
 case 204:
 case 203:
 case 202:
 case 206:
  *type = V4L2_CTRL_TYPE_MENU;
  break;
 case 256:
  *type = V4L2_CTRL_TYPE_INTEGER_MENU;
  break;
 case 158:
 case 157:
 case 171:
 case 169:
  *type = V4L2_CTRL_TYPE_STRING;
  break;
 case 261:
 case 320:
 case 183:
 case 182:
  *type = V4L2_CTRL_TYPE_INTEGER_MENU;
  break;
 case 131:
 case 310:
 case 240:
 case 274:
 case 283:
 case 257:
 case 264:
 case 265:
 case 297:
 case 275:
 case 151:
 case 303:
  *type = V4L2_CTRL_TYPE_CTRL_CLASS;

  *flags |= V4L2_CTRL_FLAG_READ_ONLY | V4L2_CTRL_FLAG_WRITE_ONLY;
  *min = *max = *step = *def = 0;
  break;
 case 313:
  *type = V4L2_CTRL_TYPE_INTEGER;
  *step = 1;
  *min = 0;

  *max = 0xFFFFFF;
  break;
 case 282:
 case 259:
 case 337:
 case 317:
 case 292:
 case 288:
 case 293:
 case 295:
  *type = V4L2_CTRL_TYPE_BITMASK;
  break;
 case 255:
 case 254:
  *type = V4L2_CTRL_TYPE_INTEGER;
  *flags |= V4L2_CTRL_FLAG_READ_ONLY;
  break;
 case 231:
  *type = V4L2_CTRL_TYPE_INTEGER64;
  *flags |= V4L2_CTRL_FLAG_VOLATILE | V4L2_CTRL_FLAG_READ_ONLY;
  *min = *def = 0;
  *max = 0x1ffffffffLL;
  *step = 1;
  break;
 case 232:
  *type = V4L2_CTRL_TYPE_INTEGER64;
  *flags |= V4L2_CTRL_FLAG_VOLATILE | V4L2_CTRL_FLAG_READ_ONLY;
  *min = *def = 0;
  *max = 0x7fffffffffffffffLL;
  *step = 1;
  break;
 case 176:
  *type = V4L2_CTRL_TYPE_INTEGER64;
  *flags |= V4L2_CTRL_FLAG_READ_ONLY;
  break;
 case 300:
  *type = V4L2_CTRL_TYPE_U8;
  break;
 case 299:
  *type = V4L2_CTRL_TYPE_U16;
  break;
 case 166:
  *type = V4L2_CTRL_TYPE_U32;
  break;
 case 197:
  *type = V4L2_CTRL_TYPE_MPEG2_SLICE_PARAMS;
  break;
 case 198:
  *type = V4L2_CTRL_TYPE_MPEG2_QUANTIZATION;
  break;
 case 227:
  *type = V4L2_CTRL_TYPE_FWHT_PARAMS;
  break;
 case 213:
  *type = V4L2_CTRL_TYPE_H264_SPS;
  break;
 case 218:
  *type = V4L2_CTRL_TYPE_H264_PPS;
  break;
 case 216:
  *type = V4L2_CTRL_TYPE_H264_SCALING_MATRIX;
  break;
 case 214:
  *type = V4L2_CTRL_TYPE_H264_SLICE_PARAMS;
  break;
 case 223:
  *type = V4L2_CTRL_TYPE_H264_DECODE_PARAMS;
  break;
 case 187:
  *type = V4L2_CTRL_TYPE_VP8_FRAME_HEADER;
  break;
 default:
  *type = V4L2_CTRL_TYPE_INTEGER;
  break;
 }
 switch (id) {
 case 248:
 case 244:
 case 236:
 case 235:
 case 239:
  *flags |= V4L2_CTRL_FLAG_UPDATE;
  break;
 case 323:
 case 336:
 case 335:
 case 324:
 case 311:
 case 305:
 case 141:
 case 269:
 case 154:
 case 312:
 case 271:
 case 139:
 case 308:
 case 162:
 case 327:
 case 329:
 case 332:
 case 330:
 case 334:
 case 331:
 case 179:
 case 177:
 case 133:
 case 135:
 case 143:
 case 148:
 case 146:
 case 150:
 case 153:
 case 302:
  *flags |= V4L2_CTRL_FLAG_SLIDER;
  break;
 case 181:
 case 137:
 case 272:
 case 262:
 case 128:
  *flags |= V4L2_CTRL_FLAG_WRITE_ONLY |
     V4L2_CTRL_FLAG_EXECUTE_ON_WRITE;
  break;
 case 277:
 case 317:
 case 280:
 case 292:
 case 288:
 case 293:
 case 295:
 case 296:
 case 170:
 case 171:
 case 169:
 case 168:
 case 167:
 case 172:
  *flags |= V4L2_CTRL_FLAG_READ_ONLY;
  break;
 case 144:
  *flags |= V4L2_CTRL_FLAG_VOLATILE;
  break;
 }
}
