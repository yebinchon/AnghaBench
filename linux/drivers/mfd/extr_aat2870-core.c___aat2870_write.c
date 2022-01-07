
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct aat2870_data {int dev; TYPE_1__* reg_cache; int client; } ;
struct TYPE_2__ {size_t value; int writeable; } ;


 size_t AAT2870_REG_NUM ;
 int EINVAL ;
 int EIO ;
 int dev_dbg (int ,char*,size_t,size_t) ;
 int dev_err (int ,char*,size_t) ;
 int i2c_master_send (int ,size_t*,int) ;

__attribute__((used)) static int __aat2870_write(struct aat2870_data *aat2870, u8 addr, u8 val)
{
 u8 msg[2];
 int ret;

 if (addr >= AAT2870_REG_NUM) {
  dev_err(aat2870->dev, "Invalid address, 0x%02x\n", addr);
  return -EINVAL;
 }

 if (!aat2870->reg_cache[addr].writeable) {
  dev_err(aat2870->dev, "Address 0x%02x is not writeable\n",
   addr);
  return -EINVAL;
 }

 msg[0] = addr;
 msg[1] = val;
 ret = i2c_master_send(aat2870->client, msg, 2);
 if (ret < 0)
  return ret;
 if (ret != 2)
  return -EIO;

 aat2870->reg_cache[addr].value = val;

 dev_dbg(aat2870->dev, "write: addr=0x%02x, val=0x%02x\n", addr, val);
 return 0;
}
