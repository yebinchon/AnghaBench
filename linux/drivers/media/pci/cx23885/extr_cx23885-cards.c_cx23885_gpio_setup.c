
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx23885_dev {int board; } ;
 int GP0_IO ;
 int GPIO_0 ;
 int GPIO_1 ;
 int GPIO_11 ;
 int GPIO_13 ;
 int GPIO_14 ;
 int GPIO_15 ;
 int GPIO_2 ;
 int GPIO_5 ;
 int GPIO_6 ;
 int GPIO_8 ;
 int GPIO_9 ;
 int GPIO_ISM ;
 int MC417_CTL ;
 int MC417_OEN ;
 int MC417_RWD ;
 int cx23885_gpio_clear (struct cx23885_dev*,int) ;
 int cx23885_gpio_enable (struct cx23885_dev*,int,int) ;
 int cx23885_gpio_set (struct cx23885_dev*,int) ;
 int cx_clear (int ,int) ;
 int cx_set (int ,int) ;
 int cx_write (int ,int) ;
 int mc417_gpio_clear (struct cx23885_dev*,int) ;
 int mc417_gpio_enable (struct cx23885_dev*,int,int) ;
 int mc417_gpio_set (struct cx23885_dev*,int) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

void cx23885_gpio_setup(struct cx23885_dev *dev)
{
 switch (dev->board) {
 case 165:

  cx_set(GP0_IO, 0x00010001);
  break;
 case 157:




  cx_set(GP0_IO, 0x00050000);
  cx_clear(GP0_IO, 0x00000005);
  msleep(5);


  cx_set(GP0_IO, 0x00050005);
  break;
 case 156:


  cx_set(GP0_IO, 0x00050005);
  break;
 case 154:
  mc417_gpio_enable(dev, GPIO_15 | GPIO_14, 1);


  mc417_gpio_clear(dev, GPIO_15 | GPIO_14);
  msleep(100);


  mc417_gpio_set(dev, GPIO_15 | GPIO_14);
  msleep(100);


  cx23885_gpio_enable(dev, GPIO_2, 1);
  cx23885_gpio_set(dev, GPIO_2);
  msleep(20);
  cx23885_gpio_clear(dev, GPIO_2);
  msleep(20);
  cx23885_gpio_set(dev, GPIO_2);
  msleep(20);
  break;
 case 167:




  cx_set(GP0_IO, 0x00050000);
  msleep(20);
  cx_clear(GP0_IO, 0x00000005);
  msleep(20);
  cx_set(GP0_IO, 0x00050005);
  break;
 case 155:
  cx_set(GP0_IO, 0x00050000);
  msleep(20);
  cx_clear(GP0_IO, 0x00000005);
  msleep(20);
  cx_set(GP0_IO, 0x00050005);
  break;
 case 158:





  cx_set(GP0_IO, 0x00050000);
  msleep(20);
  cx_clear(GP0_IO, 0x00000005);
  msleep(20);
  cx_set(GP0_IO, 0x00050005);
  break;
 case 171:






  cx_set(GP0_IO, 0x000f0000);
  msleep(20);
  cx_clear(GP0_IO, 0x0000000f);
  msleep(20);
  cx_set(GP0_IO, 0x000f000f);
  break;
 case 170:
 case 169:






  cx_set(GP0_IO, 0x000f0000);
  msleep(20);
  cx_clear(GP0_IO, 0x0000000f);
  msleep(20);
  cx_set(GP0_IO, 0x000f000f);
  break;
 case 144:
 case 142:
 case 143:
 case 179:
 case 178:
 case 141:






  cx_set(GP0_IO, 0x00040000);
  msleep(20);
  cx_clear(GP0_IO, 0x00000004);
  msleep(20);
  cx_set(GP0_IO, 0x00040004);
  break;
 case 133:
 case 132:
 case 131:
 case 134:
  cx_write(MC417_CTL, 0x00000036);
  cx_write(MC417_OEN, 0x00001000);
  cx_set(MC417_RWD, 0x00000002);
  msleep(200);
  cx_clear(MC417_RWD, 0x00000800);
  msleep(200);
  cx_set(MC417_RWD, 0x00000800);
  msleep(200);
  break;
 case 136:
  cx_set(GP0_IO, 0x00040000);

  cx_clear(GP0_IO, 0x00030004);
  msleep(100);
  cx_set(GP0_IO, 0x00040004);
  cx_write(MC417_CTL, 0x00000037);

  cx_write(MC417_OEN, 0x00001000);

  cx_write(MC417_RWD, 0x0000c300);

  cx_write(GPIO_ISM, 0x00000000);
  break;
 case 161:
 case 160:
 case 164:
 case 163:
 case 166:





  cx23885_gpio_enable(dev, GPIO_9 | GPIO_6 | GPIO_5, 1);
  cx23885_gpio_set(dev, GPIO_9 | GPIO_6 | GPIO_5);
  cx23885_gpio_clear(dev, GPIO_9);
  msleep(20);
  cx23885_gpio_set(dev, GPIO_9);
  break;
 case 139:
 case 140:
 case 138:



  cx23885_gpio_enable(dev, GPIO_0 | GPIO_1 | GPIO_2, 1);
  cx23885_gpio_clear(dev, GPIO_1 | GPIO_2);
  msleep(100);
  cx23885_gpio_set(dev, GPIO_0 | GPIO_1 | GPIO_2);
  msleep(100);
  break;
 case 137:


  cx23885_gpio_enable(dev, GPIO_0 | GPIO_1, 1);
  cx23885_gpio_clear(dev, GPIO_0 | GPIO_1);
  msleep(100);
  cx23885_gpio_set(dev, GPIO_0 | GPIO_1);
  msleep(100);
  break;
 case 153:
 case 159:
  mc417_gpio_enable(dev, GPIO_14 | GPIO_13, 1);


  mc417_gpio_clear(dev, GPIO_14 | GPIO_13);
  msleep(100);


  mc417_gpio_set(dev, GPIO_14);
  msleep(100);



  break;
 case 168:
  cx_set(GP0_IO, 0x00010001);
  break;
 case 135:
  cx_set(GP0_IO, 0x00060000);

  cx_clear(GP0_IO, 0x00010006);
  msleep(100);
  cx_set(GP0_IO, 0x00000004);
  cx_write(MC417_CTL, 0x00000037);

  cx_write(MC417_OEN, 0x00005000);

  cx_write(MC417_RWD, 0x00000d00);

  cx_write(GPIO_ISM, 0x00000000);
  break;
 case 152:
 case 146:




  cx23885_gpio_enable(dev, GPIO_8 | GPIO_9, 1);

  cx23885_gpio_clear(dev, GPIO_8 | GPIO_9);
  msleep(100);
  cx23885_gpio_set(dev, GPIO_8 | GPIO_9);
  msleep(100);

  break;
 case 180:
  cx_clear(MC417_CTL, 1);

  cx_set(GP0_IO, 0x00070000);
  usleep_range(10000, 11000);

  cx_set(GP0_IO, 0x00010001);
  usleep_range(10000, 11000);
  cx_clear(GP0_IO, 0x00010001);
  usleep_range(10000, 11000);
  cx_set(GP0_IO, 0x00010001);
  usleep_range(10000, 11000);

  cx_clear(GP0_IO, 0x00030003);
  usleep_range(10000, 11000);
  cx_set(GP0_IO, 0x00020002);
  usleep_range(10000, 11000);
  cx_set(GP0_IO, 0x00010001);
  usleep_range(10000, 11000);
  cx_clear(GP0_IO, 0x00020002);

  cx_set(GP0_IO, 0x00040004);
  cx_clear(GP0_IO, 0x00040004);
  cx_set(GP0_IO, 0x00040004);
  msleep(60);
  break;
 case 174:
 case 175:
 case 172:

  cx_write(MC417_CTL, 0x00000037);
  cx23885_gpio_enable(dev, GPIO_2 | GPIO_11, 1);
  cx23885_gpio_clear(dev, GPIO_2 | GPIO_11);
  msleep(100);
  cx23885_gpio_set(dev, GPIO_2 | GPIO_11);
  break;
 case 173:
 case 176:
 case 130:
  cx_set(GP0_IO, 0x00060002);
  cx_clear(GP0_IO, 0x00010004);
  msleep(100);
  cx_set(GP0_IO, 0x00060004);
  cx_clear(GP0_IO, 0x00010002);
  cx_write(MC417_CTL, 0x00000037);


  cx_write(MC417_OEN, 0x00001000);


  cx_write(MC417_RWD, 0x0000c300);


  cx_write(GPIO_ISM, 0x00000000);
  break;
 case 177:
  cx23885_gpio_enable(dev, GPIO_2, 1);
  cx23885_gpio_clear(dev, GPIO_2);
  msleep(100);
  cx23885_gpio_set(dev, GPIO_2);
  break;
 case 151:
 case 145:
  cx23885_gpio_enable(dev, GPIO_8 | GPIO_9, 1);
  cx23885_gpio_clear(dev, GPIO_8 | GPIO_9);
  msleep(100);
  cx23885_gpio_set(dev, GPIO_8 | GPIO_9);
  msleep(100);
  break;
 case 129:
 case 128:



  break;
 case 162:
 case 148:
 case 147:
 case 150:
 case 149:





  cx23885_gpio_enable(dev, GPIO_8 | GPIO_9, 1);
  cx23885_gpio_clear(dev, GPIO_8 | GPIO_9);
  msleep(100);
  cx23885_gpio_set(dev, GPIO_8 | GPIO_9);
  msleep(100);
  break;
 }
}
