
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct sfp {int i2c; } ;
struct i2c_msg {int len; void** buf; scalar_t__ flags; void* addr; } ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int kfree (void**) ;
 void** kmalloc (int,int ) ;
 int memcpy (void**,void*,size_t) ;

__attribute__((used)) static int sfp_i2c_write(struct sfp *sfp, bool a2, u8 dev_addr, void *buf,
 size_t len)
{
 struct i2c_msg msgs[1];
 u8 bus_addr = a2 ? 0x51 : 0x50;
 int ret;

 msgs[0].addr = bus_addr;
 msgs[0].flags = 0;
 msgs[0].len = 1 + len;
 msgs[0].buf = kmalloc(1 + len, GFP_KERNEL);
 if (!msgs[0].buf)
  return -ENOMEM;

 msgs[0].buf[0] = dev_addr;
 memcpy(&msgs[0].buf[1], buf, len);

 ret = i2c_transfer(sfp->i2c, msgs, ARRAY_SIZE(msgs));

 kfree(msgs[0].buf);

 if (ret < 0)
  return ret;

 return ret == ARRAY_SIZE(msgs) ? len : 0;
}
