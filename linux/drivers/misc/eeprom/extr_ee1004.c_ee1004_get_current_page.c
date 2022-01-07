
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENXIO ;
 int * ee1004_set_page ;
 int i2c_smbus_read_byte (int ) ;

__attribute__((used)) static int ee1004_get_current_page(void)
{
 int err;

 err = i2c_smbus_read_byte(ee1004_set_page[0]);
 if (err == -ENXIO) {

  return 1;
 }
 if (err < 0) {

  return err;
 }


 return 0;
}
