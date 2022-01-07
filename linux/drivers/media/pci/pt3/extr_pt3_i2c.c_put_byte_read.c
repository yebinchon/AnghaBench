
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt3_i2cbuf {int dummy; } ;


 int I_DATA_H_NOP ;
 int I_DATA_H_READ ;
 int I_DATA_L_NOP ;
 int cmdbuf_add (struct pt3_i2cbuf*,int ) ;

__attribute__((used)) static void put_byte_read(struct pt3_i2cbuf *cbuf, u32 size)
{
 int i, j;

 for (i = 0; i < size; i++) {
  for (j = 0; j < 8; j++)
   cmdbuf_add(cbuf, I_DATA_H_READ);
  cmdbuf_add(cbuf, (i == size - 1) ? I_DATA_H_NOP : I_DATA_L_NOP);
 }
}
