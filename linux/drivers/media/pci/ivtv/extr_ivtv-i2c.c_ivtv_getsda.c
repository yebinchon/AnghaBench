
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv {int dummy; } ;


 int IVTV_REG_I2C_GETSDA_OFFSET ;
 int read_reg (int ) ;

__attribute__((used)) static int ivtv_getsda(struct ivtv *itv)
{
 return read_reg(IVTV_REG_I2C_GETSDA_OFFSET) & 1;
}
