
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sd {int dummy; } ;


 int ARRAY_SIZE (scalar_t__**) ;
 scalar_t__ BRIDGE ;
 scalar_t__ dump_sensor ;
 scalar_t__** init_mt9m111 ;
 int m5602_write_bridge (struct sd*,scalar_t__,scalar_t__) ;
 int m5602_write_sensor (struct sd*,scalar_t__,scalar_t__*,int) ;
 int mt9m111_dump_registers (struct sd*) ;

int mt9m111_init(struct sd *sd)
{
 int i, err = 0;


 for (i = 0; i < ARRAY_SIZE(init_mt9m111) && !err; i++) {
  u8 data[2];

  if (init_mt9m111[i][0] == BRIDGE) {
   err = m5602_write_bridge(sd,
    init_mt9m111[i][1],
    init_mt9m111[i][2]);
  } else {
   data[0] = init_mt9m111[i][2];
   data[1] = init_mt9m111[i][3];
   err = m5602_write_sensor(sd,
    init_mt9m111[i][1], data, 2);
  }
 }

 if (dump_sensor)
  mt9m111_dump_registers(sd);

 return 0;
}
