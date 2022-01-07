
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char addr; } ;
struct bttv {scalar_t__ i2c_rc; TYPE_1__ i2c_client; } ;


 int i2c_master_send (TYPE_1__*,unsigned char*,int) ;

int bttv_I2CWrite(struct bttv *btv, unsigned char addr, unsigned char b1,
      unsigned char b2, int both)
{
 unsigned char buffer[2];
 int bytes = both ? 2 : 1;

 if (0 != btv->i2c_rc)
  return -1;
 btv->i2c_client.addr = addr >> 1;
 buffer[0] = b1;
 buffer[1] = b2;
 if (bytes != i2c_master_send(&btv->i2c_client, buffer, bytes))
  return -1;
 return 0;
}
