
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cmac {int adapter; TYPE_1__* instance; } ;
struct TYPE_2__ {int index; } ;


 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int PAUSE_RX ;
 int PAUSE_TX ;
 int REG_DBG (int) ;
 int REG_DEV_SETUP (int) ;
 int REG_MODE_CFG (int) ;
 int REG_PAUSE_CFG (int) ;
 int REG_TX_IFG (int) ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int vsc_read (int ,int ,int*) ;
 int vsc_write (int ,int ,int) ;

__attribute__((used)) static int mac_set_speed_duplex_fc(struct cmac *mac, int speed, int duplex,
       int fc)
{
 u32 v;
 int enable, port = mac->instance->index;

 if (speed >= 0 && speed != SPEED_10 && speed != SPEED_100 &&
     speed != SPEED_1000)
  return -1;
 if (duplex > 0 && duplex != DUPLEX_FULL)
  return -1;

 if (speed >= 0) {
  vsc_read(mac->adapter, REG_MODE_CFG(port), &v);
  enable = v & 3;
  v &= ~0xf;
  v |= 4;
  if (speed == SPEED_1000)
   v |= 8;
  enable |= v;
  vsc_write(mac->adapter, REG_MODE_CFG(port), v);

  if (speed == SPEED_1000)
   v = 0x82;
  else if (speed == SPEED_100)
   v = 0x84;
  else
   v = 0x86;
  vsc_write(mac->adapter, REG_DEV_SETUP(port), v | 1);
  vsc_write(mac->adapter, REG_DEV_SETUP(port), v);
  vsc_read(mac->adapter, REG_DBG(port), &v);
  v &= ~0xff00;
  if (speed == SPEED_1000)
   v |= 0x400;
  else if (speed == SPEED_100)
   v |= 0x2000;
  else
   v |= 0xff00;
  vsc_write(mac->adapter, REG_DBG(port), v);

  vsc_write(mac->adapter, REG_TX_IFG(port),
     speed == SPEED_1000 ? 5 : 0x11);
  if (duplex == DUPLEX_HALF)
   enable = 0x0;
  else if (speed == SPEED_1000)
   enable = 0xc;
  else
   enable = 0x4;
  enable |= 0x9 << 10;
  enable |= 0x6 << 6;
  enable |= 0x1 << 4;
  enable |= 0x3;
  vsc_write(mac->adapter, REG_MODE_CFG(port), enable);

 }

 vsc_read(mac->adapter, REG_PAUSE_CFG(port), &v);
 v &= 0xfff0ffff;
 v |= 0x20000;
 if (fc & PAUSE_RX)
  v |= 0x40000;
 if (fc & PAUSE_TX)
  v |= 0x80000;
 if (fc == (PAUSE_RX | PAUSE_TX))
  v |= 0x10000;
 vsc_write(mac->adapter, REG_PAUSE_CFG(port), v);
 return 0;
}
