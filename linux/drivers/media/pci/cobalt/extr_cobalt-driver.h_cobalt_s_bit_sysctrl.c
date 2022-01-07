
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct cobalt {int dummy; } ;


 int COBALT_SYS_CTRL_BASE ;
 unsigned long cobalt_read_bar1 (struct cobalt*,int ) ;
 int cobalt_write_bar1 (struct cobalt*,int ,unsigned long) ;

__attribute__((used)) static inline void cobalt_s_bit_sysctrl(struct cobalt *cobalt,
     int bit, int val)
{
 u32 ctrl = cobalt_read_bar1(cobalt, COBALT_SYS_CTRL_BASE);

 cobalt_write_bar1(cobalt, COBALT_SYS_CTRL_BASE,
   (ctrl & ~(1UL << bit)) | (val << bit));
}
