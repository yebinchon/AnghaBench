
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xvip_device {int dummy; } ;


 int xvip_read (struct xvip_device*,int) ;
 int xvip_write (struct xvip_device*,int,int) ;

__attribute__((used)) static inline void xvip_clr(struct xvip_device *xvip, u32 addr, u32 clr)
{
 xvip_write(xvip, addr, xvip_read(xvip, addr) & ~clr);
}
