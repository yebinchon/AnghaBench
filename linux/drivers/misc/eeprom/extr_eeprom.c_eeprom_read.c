
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kobject {int dummy; } ;
struct i2c_client {int dummy; } ;
struct file {int dummy; } ;
struct eeprom_data {scalar_t__ nature; char* data; } ;
struct bin_attribute {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 int CAP_SYS_ADMIN ;
 scalar_t__ VAIO ;
 int capable (int ) ;
 int eeprom_update_client (struct i2c_client*,int) ;
 struct eeprom_data* i2c_get_clientdata (struct i2c_client*) ;
 int kobj_to_dev (struct kobject*) ;
 int memcpy (char*,char*,size_t) ;
 struct i2c_client* to_i2c_client (int ) ;

__attribute__((used)) static ssize_t eeprom_read(struct file *filp, struct kobject *kobj,
      struct bin_attribute *bin_attr,
      char *buf, loff_t off, size_t count)
{
 struct i2c_client *client = to_i2c_client(kobj_to_dev(kobj));
 struct eeprom_data *data = i2c_get_clientdata(client);
 u8 slice;


 for (slice = off >> 5; slice <= (off + count - 1) >> 5; slice++)
  eeprom_update_client(client, slice);





 if (data->nature == VAIO && !capable(CAP_SYS_ADMIN)) {
  int i;

  for (i = 0; i < count; i++) {
   if ((off + i <= 0x1f) ||
       (off + i >= 0xc0 && off + i <= 0xdf))
    buf[i] = 0;
   else
    buf[i] = data->data[off + i];
  }
 } else {
  memcpy(buf, &data->data[off], count);
 }

 return count;
}
