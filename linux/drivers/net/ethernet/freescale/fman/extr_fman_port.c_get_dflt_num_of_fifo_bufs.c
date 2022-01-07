
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef enum fman_port_type { ____Placeholder_fman_port_type } fman_port_type ;





__attribute__((used)) static int get_dflt_num_of_fifo_bufs(u8 major, enum fman_port_type type,
         u16 speed)
{
 int val;

 if (major >= 6) {
  switch (type) {
  case 128:
   if (speed == 10000)
    val = 64;
   else
    val = 50;
   break;
  case 129:
   if (speed == 10000)
    val = 96;
   else
    val = 50;
   break;
  default:
   val = 0;
  }
 } else {
  switch (type) {
  case 128:
   if (speed == 10000)
    val = 48;
   else
    val = 44;
   break;
  case 129:
   if (speed == 10000)
    val = 48;
   else
    val = 45;
   break;
  default:
   val = 0;
  }
 }

 return val;
}
