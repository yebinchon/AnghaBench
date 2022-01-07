
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx18_i2c_algo_callback_data {int bus_index; struct cx18* cx; } ;
struct cx18 {int dummy; } ;


 int CX18_REG_I2C_1_RD ;
 int CX18_REG_I2C_2_RD ;
 int GETSDL_BIT ;
 int cx18_read_reg (struct cx18*,int ) ;

__attribute__((used)) static int cx18_getsda(void *data)
{
 struct cx18 *cx = ((struct cx18_i2c_algo_callback_data *)data)->cx;
 int bus_index = ((struct cx18_i2c_algo_callback_data *)data)->bus_index;
 u32 addr = bus_index ? CX18_REG_I2C_2_RD : CX18_REG_I2C_1_RD;

 return cx18_read_reg(cx, addr) & GETSDL_BIT;
}
