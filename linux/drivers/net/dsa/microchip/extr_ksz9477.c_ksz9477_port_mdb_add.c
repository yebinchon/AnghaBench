
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct switchdev_obj_port_mdb {int* addr; int vid; } ;
struct ksz_device {int num_statics; int alu_mutex; int dev; } ;
struct dsa_switch {struct ksz_device* priv; } ;


 int ALU_STAT_INDEX_S ;
 int ALU_STAT_READ ;
 int ALU_STAT_START ;
 int ALU_V_FID_S ;
 int ALU_V_MAC_ADDR_HI ;
 int ALU_V_STATIC_VALID ;
 int ALU_V_USE_FID ;
 int BIT (int) ;
 int REG_SW_ALU_STAT_CTRL__4 ;
 int dev_dbg (int ,char*) ;
 int ksz9477_read_table (struct ksz_device*,int*) ;
 scalar_t__ ksz9477_wait_alu_sta_ready (struct ksz_device*) ;
 int ksz9477_write_table (struct ksz_device*,int*) ;
 int ksz_write32 (struct ksz_device*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ksz9477_port_mdb_add(struct dsa_switch *ds, int port,
     const struct switchdev_obj_port_mdb *mdb)
{
 struct ksz_device *dev = ds->priv;
 u32 static_table[4];
 u32 data;
 int index;
 u32 mac_hi, mac_lo;

 mac_hi = ((mdb->addr[0] << 8) | mdb->addr[1]);
 mac_lo = ((mdb->addr[2] << 24) | (mdb->addr[3] << 16));
 mac_lo |= ((mdb->addr[4] << 8) | mdb->addr[5]);

 mutex_lock(&dev->alu_mutex);

 for (index = 0; index < dev->num_statics; index++) {

  data = (index << ALU_STAT_INDEX_S) |
   ALU_STAT_READ | ALU_STAT_START;
  ksz_write32(dev, REG_SW_ALU_STAT_CTRL__4, data);


  if (ksz9477_wait_alu_sta_ready(dev)) {
   dev_dbg(dev->dev, "Failed to read ALU STATIC\n");
   goto exit;
  }


  ksz9477_read_table(dev, static_table);

  if (static_table[0] & ALU_V_STATIC_VALID) {

   if (((static_table[2] >> ALU_V_FID_S) == mdb->vid) &&
       ((static_table[2] & ALU_V_MAC_ADDR_HI) == mac_hi) &&
       static_table[3] == mac_lo) {

    break;
   }
  } else {

   break;
  }
 }


 if (index == dev->num_statics)
  goto exit;


 static_table[0] = ALU_V_STATIC_VALID;
 static_table[1] |= BIT(port);
 if (mdb->vid)
  static_table[1] |= ALU_V_USE_FID;
 static_table[2] = (mdb->vid << ALU_V_FID_S);
 static_table[2] |= mac_hi;
 static_table[3] = mac_lo;

 ksz9477_write_table(dev, static_table);

 data = (index << ALU_STAT_INDEX_S) | ALU_STAT_START;
 ksz_write32(dev, REG_SW_ALU_STAT_CTRL__4, data);


 if (ksz9477_wait_alu_sta_ready(dev))
  dev_dbg(dev->dev, "Failed to read ALU STATIC\n");

exit:
 mutex_unlock(&dev->alu_mutex);
}
