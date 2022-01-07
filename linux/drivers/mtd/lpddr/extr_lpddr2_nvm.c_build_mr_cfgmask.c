
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int MR_CFGMASK ;

__attribute__((used)) static inline u_int build_mr_cfgmask(u_int bus_width)
{
 u_int val = MR_CFGMASK;

 if (bus_width == 0x0004)
  val = val << 16;

 return val;
}
