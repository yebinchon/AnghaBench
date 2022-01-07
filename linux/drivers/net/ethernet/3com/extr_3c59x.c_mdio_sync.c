
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vortex_private {int dummy; } ;


 int MDIO_DATA_WRITE1 ;
 int MDIO_SHIFT_CLK ;
 int Wn4_PhysicalMgmt ;
 int mdio_delay (struct vortex_private*) ;
 int window_write16 (struct vortex_private*,int,int,int ) ;

__attribute__((used)) static void mdio_sync(struct vortex_private *vp, int bits)
{

 while (-- bits >= 0) {
  window_write16(vp, MDIO_DATA_WRITE1, 4, Wn4_PhysicalMgmt);
  mdio_delay(vp);
  window_write16(vp, MDIO_DATA_WRITE1 | MDIO_SHIFT_CLK,
          4, Wn4_PhysicalMgmt);
  mdio_delay(vp);
 }
}
