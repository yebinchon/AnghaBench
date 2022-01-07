
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int dummy; } ;
typedef int s32 ;


 int stv06xx_write_bridge (struct sd*,int,int) ;

__attribute__((used)) static int setcontrast(struct sd *sd, s32 val)
{

 return stv06xx_write_bridge(sd, 0x143a, val | 0xf0);
}
