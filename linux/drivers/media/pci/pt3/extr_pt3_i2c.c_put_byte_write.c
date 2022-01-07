
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pt3_i2cbuf {int dummy; } ;


 int I_DATA_H_ACK0 ;
 int I_DATA_H_NOP ;
 int I_DATA_L_NOP ;
 int cmdbuf_add (struct pt3_i2cbuf*,int ) ;

__attribute__((used)) static void put_byte_write(struct pt3_i2cbuf *cbuf, u8 val)
{
 u8 mask;

 for (mask = 0x80; mask > 0; mask >>= 1)
  cmdbuf_add(cbuf, (val & mask) ? I_DATA_H_NOP : I_DATA_L_NOP);
 cmdbuf_add(cbuf, I_DATA_H_ACK0);
}
