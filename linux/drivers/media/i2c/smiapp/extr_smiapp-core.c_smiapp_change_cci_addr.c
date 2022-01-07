
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct smiapp_sensor {TYPE_2__* hwcfg; TYPE_1__* src; } ;
struct i2c_client {int addr; } ;
struct TYPE_4__ {int i2c_addr_dfl; int i2c_addr_alt; } ;
struct TYPE_3__ {int sd; } ;


 int ENODEV ;
 int SMIAPP_REG_U8_CCI_ADDRESS_CONTROL ;
 int smiapp_read (struct smiapp_sensor*,int ,int*) ;
 int smiapp_write (struct smiapp_sensor*,int ,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int smiapp_change_cci_addr(struct smiapp_sensor *sensor)
{
 struct i2c_client *client = v4l2_get_subdevdata(&sensor->src->sd);
 int rval;
 u32 val;

 client->addr = sensor->hwcfg->i2c_addr_dfl;

 rval = smiapp_write(sensor,
       SMIAPP_REG_U8_CCI_ADDRESS_CONTROL,
       sensor->hwcfg->i2c_addr_alt << 1);
 if (rval)
  return rval;

 client->addr = sensor->hwcfg->i2c_addr_alt;


 rval = smiapp_read(sensor, SMIAPP_REG_U8_CCI_ADDRESS_CONTROL, &val);
 if (rval)
  return rval;

 if (val != sensor->hwcfg->i2c_addr_alt << 1)
  return -ENODEV;

 return 0;
}
