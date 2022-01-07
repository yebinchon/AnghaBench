
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vortex_private {int dummy; } ;


 int Wn4_PhysicalMgmt ;
 int window_read32 (struct vortex_private*,int,int ) ;

__attribute__((used)) static void mdio_delay(struct vortex_private *vp)
{
 window_read32(vp, 4, Wn4_PhysicalMgmt);
}
