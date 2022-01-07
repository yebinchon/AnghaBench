
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int SR_OK_DATAMASK ;

__attribute__((used)) static inline u_int build_sr_ok_datamask(u_int bus_width)
{
 u_int val = SR_OK_DATAMASK;

 if (bus_width == 0x0004)
  val = (val << 16)+val;

 return val;
}
