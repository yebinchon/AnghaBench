
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cobalt {int dummy; } ;


 int cobalt_info (char*,int) ;
 int cpld_info_ver3 (struct cobalt*) ;
 int cpld_read (struct cobalt*,int) ;

void cobalt_cpld_status(struct cobalt *cobalt)
{
 u32 rev = cpld_read(cobalt, 0x30);

 switch (rev) {
 case 3:
 case 4:
 case 5:
  cpld_info_ver3(cobalt);
  break;
 default:
  cobalt_info("CPLD revision %u is not supported!\n", rev);
  break;
 }
}
