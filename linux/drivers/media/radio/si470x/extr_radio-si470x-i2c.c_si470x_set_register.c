
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct si470x_device {TYPE_1__* client; int * registers; } ;
struct i2c_msg {int len; void* buf; int addr; } ;
typedef int __be16 ;
struct TYPE_2__ {int adapter; int addr; } ;


 int EIO ;
 size_t WRITE_INDEX (int) ;
 int WRITE_REG_NUM ;
 int __cpu_to_be16 (int ) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int si470x_set_register(struct si470x_device *radio, int regnr)
{
 int i;
 __be16 buf[WRITE_REG_NUM];
 struct i2c_msg msgs[1] = {
  {
   .addr = radio->client->addr,
   .len = sizeof(u16) * WRITE_REG_NUM,
   .buf = (void *)buf
  },
 };

 for (i = 0; i < WRITE_REG_NUM; i++)
  buf[i] = __cpu_to_be16(radio->registers[WRITE_INDEX(i)]);

 if (i2c_transfer(radio->client->adapter, msgs, 1) != 1)
  return -EIO;

 return 0;
}
