
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int MAC_MII_ACC_MIIRINDA_MASK_ ;
 int MAC_MII_ACC_MIIRINDA_SHIFT_ ;
 int MAC_MII_ACC_MII_BUSY_ ;
 int MAC_MII_ACC_MII_READ_ ;
 int MAC_MII_ACC_MII_WRITE_ ;
 int MAC_MII_ACC_PHY_ADDR_MASK_ ;
 int MAC_MII_ACC_PHY_ADDR_SHIFT_ ;

__attribute__((used)) static u32 lan743x_mac_mii_access(u16 id, u16 index, int read)
{
 u32 ret;

 ret = (id << MAC_MII_ACC_PHY_ADDR_SHIFT_) &
  MAC_MII_ACC_PHY_ADDR_MASK_;
 ret |= (index << MAC_MII_ACC_MIIRINDA_SHIFT_) &
  MAC_MII_ACC_MIIRINDA_MASK_;

 if (read)
  ret |= MAC_MII_ACC_MII_READ_;
 else
  ret |= MAC_MII_ACC_MII_WRITE_;
 ret |= MAC_MII_ACC_MII_BUSY_;

 return ret;
}
