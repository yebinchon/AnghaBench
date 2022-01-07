
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sd {int dummy; } ;


 int pr_info (char*,...) ;
 int stv06xx_read_sensor (struct sd*,int,int *) ;

__attribute__((used)) static int vv6410_dump(struct sd *sd)
{
 u8 i;
 int err = 0;

 pr_info("Dumping all vv6410 sensor registers\n");
 for (i = 0; i < 0xff && !err; i++) {
  u16 data;
  err = stv06xx_read_sensor(sd, i, &data);
  pr_info("Register 0x%x contained 0x%x\n", i, data);
 }
 return (err < 0) ? err : 0;
}
