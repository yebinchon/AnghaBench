
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wr ;
struct tea5764_write_regs {int intreg; void* rdsbbl; void* rdsctrl; void* testreg; void* tnctrl; void* frqset; } ;
struct tea5764_regs {int intreg; int rdsbbl; int rdsctrl; int testreg; int tnctrl; int frqset; } ;
struct tea5764_device {TYPE_1__* i2c_client; struct tea5764_regs regs; } ;
struct i2c_msg {int len; void* buf; int addr; } ;
struct TYPE_2__ {int adapter; int addr; } ;


 int EIO ;
 void* __cpu_to_be16 (int ) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int tea5764_i2c_write(struct tea5764_device *radio)
{
 struct tea5764_write_regs wr;
 struct tea5764_regs *r = &radio->regs;
 struct i2c_msg msgs[1] = {
  {
   .addr = radio->i2c_client->addr,
   .len = sizeof(wr),
   .buf = (void *)&wr
  },
 };
 wr.intreg = r->intreg & 0xff;
 wr.frqset = __cpu_to_be16(r->frqset);
 wr.tnctrl = __cpu_to_be16(r->tnctrl);
 wr.testreg = __cpu_to_be16(r->testreg);
 wr.rdsctrl = __cpu_to_be16(r->rdsctrl);
 wr.rdsbbl = __cpu_to_be16(r->rdsbbl);
 if (i2c_transfer(radio->i2c_client->adapter, msgs, 1) != 1)
  return -EIO;
 return 0;
}
