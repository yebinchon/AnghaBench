
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vortex_private {int mii_lock; } ;
struct net_device {int dummy; } ;


 int MDIO_DATA_WRITE0 ;
 int MDIO_DATA_WRITE1 ;
 int MDIO_ENB_IN ;
 int MDIO_SHIFT_CLK ;
 int Wn4_PhysicalMgmt ;
 int mdio_delay (struct vortex_private*) ;
 int mdio_sync (struct vortex_private*,int) ;
 scalar_t__ mii_preamble_required ;
 struct vortex_private* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int window_write16 (struct vortex_private*,int,int,int ) ;

__attribute__((used)) static void mdio_write(struct net_device *dev, int phy_id, int location, int value)
{
 struct vortex_private *vp = netdev_priv(dev);
 int write_cmd = 0x50020000 | (phy_id << 23) | (location << 18) | value;
 int i;

 spin_lock_bh(&vp->mii_lock);

 if (mii_preamble_required)
  mdio_sync(vp, 32);


 for (i = 31; i >= 0; i--) {
  int dataval = (write_cmd&(1<<i)) ? MDIO_DATA_WRITE1 : MDIO_DATA_WRITE0;
  window_write16(vp, dataval, 4, Wn4_PhysicalMgmt);
  mdio_delay(vp);
  window_write16(vp, dataval | MDIO_SHIFT_CLK,
          4, Wn4_PhysicalMgmt);
  mdio_delay(vp);
 }

 for (i = 1; i >= 0; i--) {
  window_write16(vp, MDIO_ENB_IN, 4, Wn4_PhysicalMgmt);
  mdio_delay(vp);
  window_write16(vp, MDIO_ENB_IN | MDIO_SHIFT_CLK,
          4, Wn4_PhysicalMgmt);
  mdio_delay(vp);
 }

 spin_unlock_bh(&vp->mii_lock);
}
