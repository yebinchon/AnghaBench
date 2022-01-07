
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct si476x_core {int dummy; } ;
typedef int response ;


 int SI476X_I2C_RECV ;
 int si476x_core_i2c_xfer (struct si476x_core*,int ,int*,int) ;

__attribute__((used)) static int si476x_core_get_status(struct si476x_core *core)
{
 u8 response;
 int err = si476x_core_i2c_xfer(core, SI476X_I2C_RECV,
      &response, sizeof(response));

 return (err < 0) ? err : response;
}
