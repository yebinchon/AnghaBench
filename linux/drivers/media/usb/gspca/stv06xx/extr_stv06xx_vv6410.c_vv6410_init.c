
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sd {int dummy; } ;
struct TYPE_4__ {int data; int addr; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int stv06xx_write_bridge (struct sd*,int ,int ) ;
 int stv06xx_write_sensor_bytes (struct sd*,int *,int) ;
 TYPE_1__* stv_bridge_init ;
 TYPE_1__* vv6410_sensor_init ;

__attribute__((used)) static int vv6410_init(struct sd *sd)
{
 int err = 0, i;

 for (i = 0; i < ARRAY_SIZE(stv_bridge_init); i++)
  stv06xx_write_bridge(sd, stv_bridge_init[i].addr, stv_bridge_init[i].data);

 err = stv06xx_write_sensor_bytes(sd, (u8 *) vv6410_sensor_init,
      ARRAY_SIZE(vv6410_sensor_init));
 return (err < 0) ? err : 0;
}
