
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt1 {int dummy; } ;
struct i2c_msg {int addr; int len; int* buf; } ;


 int pt1_i2c_prepare (struct pt1*,int,int*) ;
 int pt1_i2c_write_byte (struct pt1*,int,int*,int) ;

__attribute__((used)) static void
pt1_i2c_write_msg(struct pt1 *pt1, int addr, int *addrp, struct i2c_msg *msg)
{
 int i;
 pt1_i2c_prepare(pt1, addr, &addr);
 pt1_i2c_write_byte(pt1, addr, &addr, msg->addr << 1);
 for (i = 0; i < msg->len; i++)
  pt1_i2c_write_byte(pt1, addr, &addr, msg->buf[i]);
 *addrp = addr;
}
