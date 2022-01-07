
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct cmac {int adapter; TYPE_1__* instance; } ;
struct TYPE_2__ {int index; } ;


 int REG_ING_FFILT_MASK0 ;
 int REG_ING_FFILT_MASK1 ;
 int REG_ING_FFILT_MASK2 ;
 int REG_ING_FFILT_UM_EN ;
 int REG_MAC_HIGH_ADDR (int) ;
 int REG_MAC_LOW_ADDR (int) ;
 int vsc_read (int ,int ,int*) ;
 int vsc_write (int ,int ,int) ;

__attribute__((used)) static int mac_set_address(struct cmac* mac, u8 addr[6])
{
 u32 val;
 int port = mac->instance->index;

 vsc_write(mac->adapter, REG_MAC_LOW_ADDR(port),
    (addr[3] << 16) | (addr[4] << 8) | addr[5]);
 vsc_write(mac->adapter, REG_MAC_HIGH_ADDR(port),
    (addr[0] << 16) | (addr[1] << 8) | addr[2]);

 vsc_read(mac->adapter, REG_ING_FFILT_UM_EN, &val);
 val &= ~0xf0000000;
 vsc_write(mac->adapter, REG_ING_FFILT_UM_EN, val | (port << 28));

 vsc_write(mac->adapter, REG_ING_FFILT_MASK0,
    0xffff0000 | (addr[4] << 8) | addr[5]);
 vsc_write(mac->adapter, REG_ING_FFILT_MASK1,
    0xffff0000 | (addr[2] << 8) | addr[3]);
 vsc_write(mac->adapter, REG_ING_FFILT_MASK2,
    0xffff0000 | (addr[0] << 8) | addr[1]);
 return 0;
}
