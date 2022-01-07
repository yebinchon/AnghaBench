
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef enum fman_port_type { ____Placeholder_fman_port_type } fman_port_type ;





__attribute__((used)) static int get_dflt_num_of_tasks(u8 major, enum fman_port_type type,
     u16 speed)
{
 switch (type) {
 case 129:
 case 128:
  switch (speed) {
  case 10000:
   return 16;
  case 1000:
   if (major >= 6)
    return 4;
   else
    return 3;
  default:
   return 0;
  }
 default:
  return 0;
 }
}
