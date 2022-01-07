
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cobalt {TYPE_1__* i2c_adap; } ;
struct TYPE_2__ {int name; } ;


 int COBALT_NUM_ADAPTERS ;
 int cobalt_dbg (int,char*) ;
 int cobalt_err (char*,int ) ;
 int i2c_del_adapter (TYPE_1__*) ;

void cobalt_i2c_exit(struct cobalt *cobalt)
{
 int i;

 cobalt_dbg(1, "i2c exit\n");

 for (i = 0; i < COBALT_NUM_ADAPTERS; i++) {
  cobalt_err("unregistered bus %s\n", cobalt->i2c_adap[i].name);
  i2c_del_adapter(&cobalt->i2c_adap[i]);
 }
}
