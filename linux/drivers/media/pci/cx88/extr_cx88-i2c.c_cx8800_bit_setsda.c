
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx88_core {int i2c_state; } ;


 int MO_I2C ;
 int cx_read (int ) ;
 int cx_write (int ,int) ;

__attribute__((used)) static void cx8800_bit_setsda(void *data, int state)
{
 struct cx88_core *core = data;

 if (state)
  core->i2c_state |= 0x01;
 else
  core->i2c_state &= ~0x01;
 cx_write(MO_I2C, core->i2c_state);
 cx_read(MO_I2C);
}
