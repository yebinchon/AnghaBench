
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr; } ;
struct bttv {TYPE_1__ c; } ;


 int I2C_TDA8540_ALT3 ;
 int I2C_TDA8540_ALT4 ;
 int I2C_TDA8540_ALT5 ;
 int I2C_TDA8540_ALT6 ;
 int bttv_I2CWrite (struct bttv*,int ,int,int,int) ;
 int dprintk (char*,int ,unsigned int,int,int) ;

__attribute__((used)) static void ivc120_muxsel(struct bttv *btv, unsigned int input)
{

 int key = input % 4;
 int matrix = input / 4;

 dprintk("%d: ivc120_muxsel: Input - %02d | TDA - %02d | In - %02d\n",
  btv->c.nr, input, matrix, key);


 bttv_I2CWrite(btv, I2C_TDA8540_ALT3, 0x00,
        ((matrix == 3) ? (key | key << 2) : 0x00), 1);
 bttv_I2CWrite(btv, I2C_TDA8540_ALT4, 0x00,
        ((matrix == 0) ? (key | key << 2) : 0x00), 1);
 bttv_I2CWrite(btv, I2C_TDA8540_ALT5, 0x00,
        ((matrix == 1) ? (key | key << 2) : 0x00), 1);
 bttv_I2CWrite(btv, I2C_TDA8540_ALT6, 0x00,
        ((matrix == 2) ? (key | key << 2) : 0x00), 1);


 bttv_I2CWrite(btv, I2C_TDA8540_ALT3, 0x02,
        ((matrix == 3) ? 0x03 : 0x00), 1);
 bttv_I2CWrite(btv, I2C_TDA8540_ALT4, 0x02,
        ((matrix == 0) ? 0x03 : 0x00), 1);
 bttv_I2CWrite(btv, I2C_TDA8540_ALT5, 0x02,
        ((matrix == 1) ? 0x03 : 0x00), 1);
 bttv_I2CWrite(btv, I2C_TDA8540_ALT6, 0x02,
        ((matrix == 2) ? 0x03 : 0x00), 1);


}
