
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;
struct dw9714_device {int current_val; int sd; } ;


 int DW9714_DEFAULT_S ;
 int DW9714_VAL (int ,int ) ;
 int dw9714_i2c_write (struct i2c_client*,int ) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int dw9714_t_focus_vcm(struct dw9714_device *dw9714_dev, u16 val)
{
 struct i2c_client *client = v4l2_get_subdevdata(&dw9714_dev->sd);

 dw9714_dev->current_val = val;

 return dw9714_i2c_write(client, DW9714_VAL(val, DW9714_DEFAULT_S));
}
