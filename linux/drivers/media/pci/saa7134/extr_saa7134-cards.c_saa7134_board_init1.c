
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7134_dev {int board; void* has_remote; int name; int gpio_value; } ;
struct TYPE_2__ {int name; } ;
 int SAA7134_GPIO_GPMODE0 ;
 int SAA7134_GPIO_GPMODE1 ;
 int SAA7134_GPIO_GPMODE3 ;
 int SAA7134_GPIO_GPSTATUS0 ;
 int SAA7134_GPIO_GPSTATUS1 ;
 int SAA7134_GPIO_GPSTATUS2 ;
 int SAA7134_GPIO_GPSTATUS3 ;
 int SAA7134_PRODUCTION_TEST_MODE ;
 void* SAA7134_REMOTE_GPIO ;
 void* SAA7134_REMOTE_I2C ;
 int board_flyvideo (struct saa7134_dev*) ;
 TYPE_1__ card (struct saa7134_dev*) ;
 int msleep (int) ;
 int pr_info (char*,int ,int ) ;
 int pr_warn (char*,int ,int ,int ,...) ;
 int saa7134_set_gpio (struct saa7134_dev*,int,int) ;
 int saa_andorl (int,int,int) ;
 int saa_readl (int) ;
 int saa_writeb (int ,int) ;
 int saa_writel (int,int ) ;

int saa7134_board_init1(struct saa7134_dev *dev)
{

 saa_writel(SAA7134_GPIO_GPMODE0 >> 2, 0);
 dev->gpio_value = saa_readl(SAA7134_GPIO_GPSTATUS0 >> 2);
 pr_info("%s: board init: gpio is %x\n", dev->name, dev->gpio_value);

 switch (dev->board) {
 case 168:
 case 167:
 case 166:
  dev->has_remote = SAA7134_REMOTE_GPIO;
  board_flyvideo(dev);
  break;
 case 169:
 case 170:
 case 186:
 case 184:
 case 183:
 case 182:
 case 181:
 case 180:
 case 150:
 case 157:
 case 156:
 case 221:
 case 241:
 case 219:
 case 239:
 case 220:
 case 240:
 case 218:
 case 228:
 case 238:
 case 223:

 case 128:
 case 133:
 case 129:
 case 132:
 case 134:
 case 136:
 case 135:
 case 152:
 case 151:
 case 209:
 case 242:
 case 164:
 case 158:
 case 139:
 case 171:
 case 243:
 case 245:
 case 244:
 case 246:
 case 174:
 case 143:
 case 236:
 case 179:
 case 178:
 case 176:
 case 177:
 case 248:
 case 217:
 case 216:
 case 215:
 case 214:
 case 213:
 case 212:
 case 211:
 case 210:
 case 208:
 case 206:
 case 207:
 case 203:
 case 205:
 case 204:
 case 165:
 case 142:
 case 159:
 case 227:
 case 141:
 case 155:
 case 154:
  dev->has_remote = SAA7134_REMOTE_GPIO;
  break;
 case 175:
  saa_writeb(SAA7134_GPIO_GPMODE3, 0x80);
  saa_writeb(SAA7134_GPIO_GPSTATUS2, 0x40);
  dev->has_remote = SAA7134_REMOTE_GPIO;
  break;
 case 149:
  pr_warn("%s: seems there are two different versions of the MD5044\n"
   "%s: (with the same ID) out there.  If sound doesn't work for\n"
   "%s: you try the audio_clock_override=0x200000 insmod option.\n",
   dev->name, dev->name, dev->name);
  break;
 case 185:

  saa_andorl(SAA7134_GPIO_GPMODE0 >> 2, 0x00040000, 0x00040000);
  saa_andorl(SAA7134_GPIO_GPSTATUS0 >> 2, 0x00040000, 0x00000000);
  break;
 case 146:

  saa_writeb(SAA7134_GPIO_GPMODE1, 0x80);
  saa_writeb(SAA7134_GPIO_GPSTATUS1, 0x80);
  break;
 case 148:

  saa_andorl(SAA7134_GPIO_GPMODE0 >> 2, 0x00040000, 0x00040000);
  saa_andorl(SAA7134_GPIO_GPSTATUS0 >> 2, 0x00040000, 0x00000004);
  break;
 case 173:

  saa_writeb(SAA7134_GPIO_GPMODE3, 0x08);
  saa_writeb(SAA7134_GPIO_GPSTATUS3, 0x06);
  break;
 case 247:
 case 172:
  saa_andorl(SAA7134_GPIO_GPMODE0 >> 2, 0x08000000, 0x08000000);
  saa_andorl(SAA7134_GPIO_GPSTATUS0 >> 2, 0x08000000, 0x00000000);
  break;
 case 231:
 case 224:

  saa_andorl(SAA7134_GPIO_GPMODE0 >> 2, 0xffffffff, 0);
  saa_andorl(SAA7134_GPIO_GPSTATUS0 >> 2, 0xffffffff, 0);
  msleep(10);

  saa_andorl(SAA7134_GPIO_GPMODE0 >> 2, 0xffffffff, 0xffffffff);
  saa_andorl(SAA7134_GPIO_GPSTATUS0 >> 2, 0xffffffff, 0xffffffff);
  msleep(10);
  break;
 case 230:

  saa_andorl(SAA7134_GPIO_GPMODE0 >> 2, 0x08400000, 0x08400000);
  saa_andorl(SAA7134_GPIO_GPSTATUS0 >> 2, 0x08400000, 0);
  msleep(10);
  saa_andorl(SAA7134_GPIO_GPMODE0 >> 2, 0x08400000, 0x08400000);
  saa_andorl(SAA7134_GPIO_GPSTATUS0 >> 2, 0x08400000, 0x08400000);
  msleep(10);
  dev->has_remote = SAA7134_REMOTE_I2C;
  break;
 case 229:
  saa7134_set_gpio(dev, 23, 0);
  msleep(10);
  saa7134_set_gpio(dev, 23, 1);
  dev->has_remote = SAA7134_REMOTE_I2C;
  break;
 case 225:
  saa7134_set_gpio(dev, 23, 0);
  msleep(10);
  saa7134_set_gpio(dev, 23, 1);
  break;
 case 235:
  saa7134_set_gpio(dev, 21, 0);
  msleep(10);
  saa7134_set_gpio(dev, 21, 1);
  msleep(1);
  dev->has_remote = SAA7134_REMOTE_GPIO;
  break;
 case 193:

  saa_andorl(SAA7134_GPIO_GPMODE0 >> 2, 0x000A8004, 0x000A8004);
  saa_andorl(SAA7134_GPIO_GPSTATUS0 >> 2, 0x000A8004, 0);
  msleep(10);

  saa_andorl(SAA7134_GPIO_GPMODE0 >> 2, 0x000A8004, 0x000A8004);
  saa_andorl(SAA7134_GPIO_GPSTATUS0 >> 2, 0x000A8004, 0x000A8004);
  msleep(10);

  dev->has_remote = SAA7134_REMOTE_GPIO;
  break;
 case 140:
  saa_writeb (SAA7134_PRODUCTION_TEST_MODE, 0x00);
  break;
 case 161:
 case 162:
  dev->has_remote = SAA7134_REMOTE_GPIO;

  saa7134_set_gpio(dev, 26, 0);
  msleep(1);

  saa7134_set_gpio(dev, 22, 0);
  msleep(10);
  saa7134_set_gpio(dev, 22, 1);
  break;

 case 145:
 case 144:
 case 137:
 case 147:
 case 163:
 case 202:
 case 201:
 case 198:
 case 197:
 case 200:
 case 199:
 case 196:
 case 195:
 case 190:
 case 189:
 case 188:
 case 192:
 case 187:
 case 191:
 case 194:
 case 160:
 case 138:
  dev->has_remote = SAA7134_REMOTE_I2C;
  break;
 case 237:
  pr_warn("%s: %s: dual saa713x broadcast decoders\n"
   "%s: Sorry, none of the inputs to this chip are supported yet.\n"
   "%s: Dual decoder functionality is disabled for now, use the other chip.\n",
   dev->name, card(dev).name, dev->name, dev->name);
  break;
 case 226:

        dev->has_remote = SAA7134_REMOTE_GPIO;
  saa_andorl(SAA7134_GPIO_GPMODE0 >> 2, 0x8c040007, 0x8c040007);
  saa_andorl(SAA7134_GPIO_GPSTATUS0 >> 2, 0x0c0007cd, 0x0c0007cd);
  break;
 case 234:
 case 233:

  saa_andorl(SAA7134_GPIO_GPMODE0 >> 2, 0x80040100, 0x80040100);
  saa_andorl(SAA7134_GPIO_GPSTATUS0 >> 2, 0x80040100, 0x00040100);
  break;
 case 232:

  saa7134_set_gpio(dev, 12, 3);
  saa7134_set_gpio(dev, 13, 3);
  dev->has_remote = SAA7134_REMOTE_I2C;




  saa7134_set_gpio(dev, 23, 1);
  break;
 case 131:
  dev->has_remote = SAA7134_REMOTE_GPIO;
  saa_andorl(SAA7134_GPIO_GPMODE0 >> 2, 0x0000C000, 0x0000C000);
  saa_andorl(SAA7134_GPIO_GPSTATUS0 >> 2, 0x0000C000, 0x0000C000);
  break;
 case 222:
  saa7134_set_gpio(dev, 1, 1);
  msleep(10);
  saa7134_set_gpio(dev, 1, 0);
  msleep(10);
  saa7134_set_gpio(dev, 1, 1);
  dev->has_remote = SAA7134_REMOTE_GPIO;
  break;
 case 153:

  saa_andorl(SAA7134_GPIO_GPMODE0 >> 2, 0x0e050000, 0x0c050000);
  saa_andorl(SAA7134_GPIO_GPSTATUS0 >> 2, 0x0e050000, 0x0c050000);
  break;
 case 130:

  saa_andorl(SAA7134_GPIO_GPMODE0 >> 2, 0x00008000, 0x00008000);
  saa_andorl(SAA7134_GPIO_GPSTATUS0 >> 2, 0x00008000, 0x00008000);
  break;
 }
 return 0;
}
