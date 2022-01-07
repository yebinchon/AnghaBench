
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct b43_phy {struct b43_phy_g* g; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_txpower_lo_control {int power_vector; int pwr_vec_read_time; } ;
struct b43_phy_g {struct b43_txpower_lo_control* lo_control; } ;


 int B43_SHM_SHARED ;
 int b43_shm_read16 (struct b43_wldev*,int ,int) ;
 int b43_shm_write16 (struct b43_wldev*,int ,int,int ) ;
 int jiffies ;

__attribute__((used)) static void lo_read_power_vector(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_g *gphy = phy->g;
 struct b43_txpower_lo_control *lo = gphy->lo_control;
 int i;
 u64 tmp;
 u64 power_vector = 0;

 for (i = 0; i < 8; i += 2) {
  tmp = b43_shm_read16(dev, B43_SHM_SHARED, 0x310 + i);
  power_vector |= (tmp << (i * 8));

  b43_shm_write16(dev, B43_SHM_SHARED, 0x310 + i, 0);
 }
 if (power_vector)
  lo->power_vector = power_vector;
 lo->pwr_vec_read_time = jiffies;
}
