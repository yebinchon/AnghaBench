
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ag71xx {scalar_t__ mac_base; } ;


 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void ag71xx_wr(struct ag71xx *ag, unsigned int reg, u32 value)
{
 iowrite32(value, ag->mac_base + reg);

 (void)ioread32(ag->mac_base + reg);
}
