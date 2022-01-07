
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt3_i2cbuf {int dummy; } ;


 int I_CLOCK_H ;
 int I_DATA_H ;
 int I_DATA_L ;
 int cmdbuf_add (struct pt3_i2cbuf*,int ) ;

__attribute__((used)) static void put_stop(struct pt3_i2cbuf *cbuf)
{
 cmdbuf_add(cbuf, I_DATA_L);
 cmdbuf_add(cbuf, I_CLOCK_H);
 cmdbuf_add(cbuf, I_DATA_H);
}
