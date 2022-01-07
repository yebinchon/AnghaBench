
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx88_core {int dummy; } ;


 int MO_I2C ;
 int cx_read (int ) ;

__attribute__((used)) static int cx8800_bit_getsda(void *data)
{
 struct cx88_core *core = data;
 u32 state;

 state = cx_read(MO_I2C);
 return state & 0x01;
}
