
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct aat2870_data {int dev; int client; TYPE_1__* reg_cache; } ;
struct TYPE_2__ {size_t value; int readable; } ;


 size_t AAT2870_REG_NUM ;
 int EINVAL ;
 int EIO ;
 int dev_dbg (int ,char*,size_t,size_t) ;
 int dev_err (int ,char*,size_t) ;
 int i2c_master_recv (int ,size_t*,int) ;
 int i2c_master_send (int ,size_t*,int) ;

__attribute__((used)) static int __aat2870_read(struct aat2870_data *aat2870, u8 addr, u8 *val)
{
 int ret;

 if (addr >= AAT2870_REG_NUM) {
  dev_err(aat2870->dev, "Invalid address, 0x%02x\n", addr);
  return -EINVAL;
 }

 if (!aat2870->reg_cache[addr].readable) {
  *val = aat2870->reg_cache[addr].value;
  goto out;
 }

 ret = i2c_master_send(aat2870->client, &addr, 1);
 if (ret < 0)
  return ret;
 if (ret != 1)
  return -EIO;

 ret = i2c_master_recv(aat2870->client, val, 1);
 if (ret < 0)
  return ret;
 if (ret != 1)
  return -EIO;

out:
 dev_dbg(aat2870->dev, "read: addr=0x%02x, val=0x%02x\n", addr, *val);
 return 0;
}
