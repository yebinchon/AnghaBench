
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmac {int adapter; TYPE_1__* instance; } ;
struct TYPE_2__ {int index; } ;


 int ARRAY_SIZE (int ) ;
 int run_table (int ,int ,int ) ;
 int * vsc7326_portinit ;

__attribute__((used)) static int mac_reset(struct cmac *mac)
{
 int index = mac->instance->index;

 run_table(mac->adapter, vsc7326_portinit[index],
    ARRAY_SIZE(vsc7326_portinit[index]));

 return 0;
}
