
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt3_i2cbuf {int num_cmds; } ;


 int I_END ;
 int cmdbuf_add (struct pt3_i2cbuf*,int ) ;

__attribute__((used)) static void put_end(struct pt3_i2cbuf *cbuf)
{
 cmdbuf_add(cbuf, I_END);
 if (cbuf->num_cmds % 2)
  cmdbuf_add(cbuf, I_END);
}
