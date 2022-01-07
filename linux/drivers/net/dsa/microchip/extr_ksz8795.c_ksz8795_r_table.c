
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct ksz_device {int alu_mutex; } ;


 int IND_ACC_TABLE (int) ;
 int REG_IND_CTRL_0 ;
 int REG_IND_DATA_HI ;
 int TABLE_READ ;
 int ksz_read64 (struct ksz_device*,int ,int *) ;
 int ksz_write16 (struct ksz_device*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ksz8795_r_table(struct ksz_device *dev, int table, u16 addr,
       u64 *data)
{
 u16 ctrl_addr;

 ctrl_addr = IND_ACC_TABLE(table | TABLE_READ) | addr;

 mutex_lock(&dev->alu_mutex);
 ksz_write16(dev, REG_IND_CTRL_0, ctrl_addr);
 ksz_read64(dev, REG_IND_DATA_HI, data);
 mutex_unlock(&dev->alu_mutex);
}
