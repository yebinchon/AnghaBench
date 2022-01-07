
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct bttv {scalar_t__ i2c_rc; TYPE_1__ i2c_client; } ;


 int memset (unsigned char*,int ,int) ;
 int tveeprom_read (TYPE_1__*,unsigned char*,int) ;

void bttv_readee(struct bttv *btv, unsigned char *eedata, int addr)
{
 memset(eedata, 0, 256);
 if (0 != btv->i2c_rc)
  return;
 btv->i2c_client.addr = addr >> 1;
 tveeprom_read(&btv->i2c_client, eedata, 256);
}
