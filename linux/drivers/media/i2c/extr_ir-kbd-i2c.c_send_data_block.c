
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct code_block {int length; int* csum; } ;
struct IR_i2c {TYPE_1__* rc; int tx_c; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int dev_dbg (int *,char*,int,...) ;
 int dev_err (int *,char*,int) ;
 int i2c_master_send (int ,int*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int send_data_block(struct IR_i2c *ir, int cmd,
      struct code_block *code_block)
{
 int i, j, ret;
 u8 buf[5], *p;

 p = &code_block->length;
 for (i = 0; p < code_block->csum; i++)
  code_block->csum[i & 1] ^= *p++;

 p = &code_block->length;

 for (i = 0; i < sizeof(*code_block);) {
  int tosend = sizeof(*code_block) - i;

  if (tosend > 4)
   tosend = 4;
  buf[0] = i + 1;
  for (j = 0; j < tosend; ++j)
   buf[1 + j] = p[i + j];
  dev_dbg(&ir->rc->dev, "%*ph", tosend + 1, buf);
  ret = i2c_master_send(ir->tx_c, buf, tosend + 1);
  if (ret != tosend + 1) {
   dev_dbg(&ir->rc->dev,
    "i2c_master_send failed with %d\n", ret);
   return ret < 0 ? ret : -EIO;
  }
  i += tosend;
 }

 buf[0] = 0;
 buf[1] = cmd;
 ret = i2c_master_send(ir->tx_c, buf, 2);
 if (ret != 2) {
  dev_err(&ir->rc->dev, "i2c_master_send failed with %d\n", ret);
  return ret < 0 ? ret : -EIO;
 }

 usleep_range(2000, 5000);

 ret = i2c_master_send(ir->tx_c, buf, 1);
 if (ret != 1) {
  dev_err(&ir->rc->dev, "i2c_master_send failed with %d\n", ret);
  return ret < 0 ? ret : -EIO;
 }

 return 0;
}
