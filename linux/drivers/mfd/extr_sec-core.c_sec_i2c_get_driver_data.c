
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_device_id {scalar_t__ data; } ;
struct i2c_device_id {unsigned long driver_data; } ;
struct TYPE_2__ {scalar_t__ of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;


 struct of_device_id* of_match_node (int ,scalar_t__) ;
 int sec_dt_match ;

__attribute__((used)) static inline unsigned long sec_i2c_get_driver_data(struct i2c_client *i2c,
      const struct i2c_device_id *id)
{
 return id->driver_data;
}
