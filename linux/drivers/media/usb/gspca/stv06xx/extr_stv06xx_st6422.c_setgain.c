
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;


 int stv06xx_write_bridge (struct sd*,int,int) ;

__attribute__((used)) static int setgain(struct sd *sd, u8 gain)
{
 int err;


 err = stv06xx_write_bridge(sd, 0x0509, gain);
 if (err < 0)
  return err;

 err = stv06xx_write_bridge(sd, 0x050a, gain);
 if (err < 0)
  return err;

 err = stv06xx_write_bridge(sd, 0x050b, gain);
 if (err < 0)
  return err;


 err = stv06xx_write_bridge(sd, 0x050c, 0x2a);
 if (err < 0)
  return err;

 return stv06xx_write_bridge(sd, 0x050d, 0x01);
}
