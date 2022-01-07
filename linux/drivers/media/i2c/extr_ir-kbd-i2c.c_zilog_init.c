
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct code_block {int length; int * pulse; } ;
struct IR_i2c {TYPE_1__* c; int tx_c; } ;
typedef int code_block ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int ZILOG_INIT_END ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int ,int ,int ) ;
 int i2c_master_recv (int ,int *,int) ;
 int put_unaligned_be16 (int,int *) ;
 int send_data_block (struct IR_i2c*,int ,struct code_block*) ;

__attribute__((used)) static int zilog_init(struct IR_i2c *ir)
{
 struct code_block code_block = { .length = sizeof(code_block) };
 u8 buf[4];
 int ret;

 put_unaligned_be16(0x1000, &code_block.pulse[3]);

 ret = send_data_block(ir, ZILOG_INIT_END, &code_block);
 if (ret)
  return ret;

 ret = i2c_master_recv(ir->tx_c, buf, 4);
 if (ret != 4) {
  dev_err(&ir->c->dev, "failed to retrieve firmware version: %d\n",
   ret);
  return ret < 0 ? ret : -EIO;
 }

 dev_info(&ir->c->dev, "Zilog/Hauppauge IR blaster firmware version %d.%d.%d\n",
   buf[1], buf[2], buf[3]);

 return 0;
}
