
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;


 int ARRAY_SIZE (int**) ;

 int EINVAL ;

 scalar_t__ dump_sensor ;
 int** init_po1030 ;
 int m5602_write_bridge (struct sd*,int,int) ;
 int m5602_write_sensor (struct sd*,int,int*,int) ;
 int po1030_dump_registers (struct sd*) ;
 int pr_info (char*) ;

int po1030_init(struct sd *sd)
{
 int i, err = 0;


 for (i = 0; i < ARRAY_SIZE(init_po1030) && !err; i++) {
  u8 data[2] = {0x00, 0x00};

  switch (init_po1030[i][0]) {
  case 129:
   err = m5602_write_bridge(sd,
    init_po1030[i][1],
    init_po1030[i][2]);
   break;

  case 128:
   data[0] = init_po1030[i][2];
   err = m5602_write_sensor(sd,
    init_po1030[i][1], data, 1);
   break;

  default:
   pr_info("Invalid stream command, exiting init\n");
   return -EINVAL;
  }
 }
 if (err < 0)
  return err;

 if (dump_sensor)
  po1030_dump_registers(sd);

 return 0;
}
