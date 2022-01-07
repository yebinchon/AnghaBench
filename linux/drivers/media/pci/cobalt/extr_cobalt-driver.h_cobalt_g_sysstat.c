
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cobalt {int dummy; } ;


 int COBALT_SYS_STAT_BASE ;
 int cobalt_read_bar1 (struct cobalt*,int ) ;

__attribute__((used)) static inline u32 cobalt_g_sysstat(struct cobalt *cobalt)
{
 return cobalt_read_bar1(cobalt, COBALT_SYS_STAT_BASE);
}
