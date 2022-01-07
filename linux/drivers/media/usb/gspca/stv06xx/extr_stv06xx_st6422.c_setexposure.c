
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int dummy; } ;
typedef int s16 ;


 int stv06xx_write_bridge (struct sd*,int,int) ;

__attribute__((used)) static int setexposure(struct sd *sd, s16 expo)
{
 int err;

 err = stv06xx_write_bridge(sd, 0x143d, expo & 0xff);
 if (err < 0)
  return err;

 return stv06xx_write_bridge(sd, 0x143e, expo >> 8);
}
