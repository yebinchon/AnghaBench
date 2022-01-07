
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ag71xx {scalar_t__ mac_base; } ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static u32 ag71xx_rr(struct ag71xx *ag, unsigned int reg)
{
 return ioread32(ag->mac_base + reg);
}
