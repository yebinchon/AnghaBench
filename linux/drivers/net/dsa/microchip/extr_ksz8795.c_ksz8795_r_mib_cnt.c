
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct ksz_device {int alu_mutex; } ;


 scalar_t__ IND_ACC_TABLE (int) ;
 int MIB_COUNTER_OVERFLOW ;
 int MIB_COUNTER_VALID ;
 int MIB_COUNTER_VALUE ;
 int REG_IND_CTRL_0 ;
 int REG_IND_DATA_LO ;
 int REG_IND_MIB_CHECK ;
 int SWITCH_COUNTER_NUM ;
 int TABLE_MIB ;
 int TABLE_READ ;
 int ksz_read32 (struct ksz_device*,int ,int*) ;
 int ksz_read8 (struct ksz_device*,int ,int*) ;
 int ksz_write16 (struct ksz_device*,int ,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ksz8795_r_mib_cnt(struct ksz_device *dev, int port, u16 addr,
         u64 *cnt)
{
 u16 ctrl_addr;
 u32 data;
 u8 check;
 int loop;

 ctrl_addr = addr + SWITCH_COUNTER_NUM * port;
 ctrl_addr |= IND_ACC_TABLE(TABLE_MIB | TABLE_READ);

 mutex_lock(&dev->alu_mutex);
 ksz_write16(dev, REG_IND_CTRL_0, ctrl_addr);




 for (loop = 2; loop > 0; loop--) {
  ksz_read8(dev, REG_IND_MIB_CHECK, &check);

  if (check & MIB_COUNTER_VALID) {
   ksz_read32(dev, REG_IND_DATA_LO, &data);
   if (check & MIB_COUNTER_OVERFLOW)
    *cnt += MIB_COUNTER_VALUE + 1;
   *cnt += data & MIB_COUNTER_VALUE;
   break;
  }
 }
 mutex_unlock(&dev->alu_mutex);
}
