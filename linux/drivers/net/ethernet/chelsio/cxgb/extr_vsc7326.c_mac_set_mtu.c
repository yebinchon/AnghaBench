
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmac {int adapter; TYPE_1__* instance; } ;
struct TYPE_2__ {int index; } ;


 int REG_MAX_LEN (int) ;
 int vsc_write (int ,int ,int) ;

__attribute__((used)) static int mac_set_mtu(struct cmac *mac, int mtu)
{
 int port = mac->instance->index;


 vsc_write(mac->adapter, REG_MAX_LEN(port), mtu + 14 + 4);
 return 0;
}
