
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MII_ACC_MIIRINDA_MASK_ ;
 int MII_ACC_MIIRINDA_SHIFT_ ;
 int MII_ACC_MII_BUSY_ ;
 int MII_ACC_MII_READ_ ;
 int MII_ACC_MII_WRITE_ ;
 int MII_ACC_PHY_ADDR_MASK_ ;
 int MII_ACC_PHY_ADDR_SHIFT_ ;

__attribute__((used)) static inline u32 mii_access(int id, int index, int read)
{
 u32 ret;

 ret = ((u32)id << MII_ACC_PHY_ADDR_SHIFT_) & MII_ACC_PHY_ADDR_MASK_;
 ret |= ((u32)index << MII_ACC_MIIRINDA_SHIFT_) & MII_ACC_MIIRINDA_MASK_;
 if (read)
  ret |= MII_ACC_MII_READ_;
 else
  ret |= MII_ACC_MII_WRITE_;
 ret |= MII_ACC_MII_BUSY_;

 return ret;
}
