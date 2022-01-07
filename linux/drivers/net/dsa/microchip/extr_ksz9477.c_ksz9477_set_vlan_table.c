
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
typedef size_t u16 ;
struct ksz_device {int vlan_mutex; TYPE_1__* vlan_cache; int dev; } ;
struct TYPE_2__ {void** table; } ;


 int REG_SW_VLAN_CTRL ;
 int REG_SW_VLAN_ENTRY_INDEX__2 ;
 int REG_SW_VLAN_ENTRY_PORTS__4 ;
 int REG_SW_VLAN_ENTRY_UNTAG__4 ;
 int REG_SW_VLAN_ENTRY__4 ;
 size_t VLAN_INDEX_M ;
 int VLAN_START ;
 int VLAN_WRITE ;
 int dev_dbg (int ,char*) ;
 int ksz9477_wait_vlan_ctrl_ready (struct ksz_device*) ;
 int ksz_write16 (struct ksz_device*,int ,size_t) ;
 int ksz_write32 (struct ksz_device*,int ,void*) ;
 int ksz_write8 (struct ksz_device*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ksz9477_set_vlan_table(struct ksz_device *dev, u16 vid,
      u32 *vlan_table)
{
 int ret;

 mutex_lock(&dev->vlan_mutex);

 ksz_write32(dev, REG_SW_VLAN_ENTRY__4, vlan_table[0]);
 ksz_write32(dev, REG_SW_VLAN_ENTRY_UNTAG__4, vlan_table[1]);
 ksz_write32(dev, REG_SW_VLAN_ENTRY_PORTS__4, vlan_table[2]);

 ksz_write16(dev, REG_SW_VLAN_ENTRY_INDEX__2, vid & VLAN_INDEX_M);
 ksz_write8(dev, REG_SW_VLAN_CTRL, VLAN_START | VLAN_WRITE);


 ret = ksz9477_wait_vlan_ctrl_ready(dev);
 if (ret) {
  dev_dbg(dev->dev, "Failed to write vlan table\n");
  goto exit;
 }

 ksz_write8(dev, REG_SW_VLAN_CTRL, 0);


 dev->vlan_cache[vid].table[0] = vlan_table[0];
 dev->vlan_cache[vid].table[1] = vlan_table[1];
 dev->vlan_cache[vid].table[2] = vlan_table[2];

exit:
 mutex_unlock(&dev->vlan_mutex);

 return ret;
}
