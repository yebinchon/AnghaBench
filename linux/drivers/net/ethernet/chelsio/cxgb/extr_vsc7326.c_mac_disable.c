
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cmac_statistics {int dummy; } ;
struct cmac {int stats; int adapter; TYPE_1__* instance; } ;
struct TYPE_2__ {int index; } ;


 int CRA (int,int,int) ;
 int MAC_DIRECTION_RX ;
 int MAC_DIRECTION_TX ;
 int REG_MODE_CFG (int) ;
 int mac_reset (struct cmac*) ;
 int memset (int *,int ,int) ;
 int vsc_read (int ,int ,int*) ;
 int vsc_write (int ,int ,int) ;

__attribute__((used)) static int mac_disable(struct cmac *mac, int which)
{
 u32 val;
 int i, port = mac->instance->index;


 mac_reset(mac);

 vsc_read(mac->adapter, REG_MODE_CFG(port), &val);
 if (which & MAC_DIRECTION_RX)
  val &= ~0x2;
 if (which & MAC_DIRECTION_TX)
  val &= ~0x1;
 vsc_write(mac->adapter, REG_MODE_CFG(port), val);
 vsc_read(mac->adapter, REG_MODE_CFG(port), &val);


 for (i = 0; i <= 0x3a; ++i)
  vsc_write(mac->adapter, CRA(4, port, i), 0);


 memset(&mac->stats, 0, sizeof(struct cmac_statistics));

 return 0;
}
