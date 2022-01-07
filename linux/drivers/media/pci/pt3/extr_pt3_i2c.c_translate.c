
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt3_i2cbuf {scalar_t__ num_cmds; } ;
struct i2c_msg {int flags; int addr; int len; int* buf; } ;


 int I2C_M_RD ;
 int put_byte_read (struct pt3_i2cbuf*,int) ;
 int put_byte_write (struct pt3_i2cbuf*,int) ;
 int put_end (struct pt3_i2cbuf*) ;
 int put_start (struct pt3_i2cbuf*) ;
 int put_stop (struct pt3_i2cbuf*) ;

__attribute__((used)) static void translate(struct pt3_i2cbuf *cbuf, struct i2c_msg *msgs, int num)
{
 int i, j;
 bool rd;

 cbuf->num_cmds = 0;
 for (i = 0; i < num; i++) {
  rd = !!(msgs[i].flags & I2C_M_RD);
  put_start(cbuf);
  put_byte_write(cbuf, msgs[i].addr << 1 | rd);
  if (rd)
   put_byte_read(cbuf, msgs[i].len);
  else
   for (j = 0; j < msgs[i].len; j++)
    put_byte_write(cbuf, msgs[i].buf[j]);
 }
 if (num > 0) {
  put_stop(cbuf);
  put_end(cbuf);
 }
}
