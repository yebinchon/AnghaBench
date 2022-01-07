
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xvip_device {int dummy; } ;


 int xvip_read (struct xvip_device*,int) ;
 int xvip_write (struct xvip_device*,int,int) ;

void xvip_clr_or_set(struct xvip_device *xvip, u32 addr, u32 mask, bool set)
{
 u32 reg;

 reg = xvip_read(xvip, addr);
 reg = set ? reg | mask : reg & ~mask;
 xvip_write(xvip, addr, reg);
}
