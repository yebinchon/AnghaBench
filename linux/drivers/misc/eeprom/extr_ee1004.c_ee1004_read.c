
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct i2c_client {int dummy; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 int EE1004_PAGE_SHIFT ;
 int EE1004_PAGE_SIZE ;
 int ENXIO ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_err (struct device*,char*,int,int) ;
 int ee1004_bus_lock ;
 int ee1004_current_page ;
 int ee1004_eeprom_read (struct i2c_client*,char*,int,size_t) ;
 int ee1004_get_current_page () ;
 int * ee1004_set_page ;
 int i2c_smbus_write_byte (int ,int) ;
 struct device* kobj_to_dev (struct kobject*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ssize_t ee1004_read(struct file *filp, struct kobject *kobj,
      struct bin_attribute *bin_attr,
      char *buf, loff_t off, size_t count)
{
 struct device *dev = kobj_to_dev(kobj);
 struct i2c_client *client = to_i2c_client(dev);
 size_t requested = count;
 int page;

 if (unlikely(!count))
  return count;

 page = off >> EE1004_PAGE_SHIFT;
 if (unlikely(page > 1))
  return 0;
 off &= (1 << EE1004_PAGE_SHIFT) - 1;





 mutex_lock(&ee1004_bus_lock);

 while (count) {
  int status;


  if (page != ee1004_current_page) {

   status = i2c_smbus_write_byte(ee1004_set_page[page],
            0x00);
   if (status == -ENXIO) {






    if (ee1004_get_current_page() == page)
     status = 0;
   }
   if (status < 0) {
    dev_err(dev, "Failed to select page %d (%d)\n",
     page, status);
    mutex_unlock(&ee1004_bus_lock);
    return status;
   }
   dev_dbg(dev, "Selected page %d\n", page);
   ee1004_current_page = page;
  }

  status = ee1004_eeprom_read(client, buf, off, count);
  if (status < 0) {
   mutex_unlock(&ee1004_bus_lock);
   return status;
  }
  buf += status;
  off += status;
  count -= status;

  if (off == EE1004_PAGE_SIZE) {
   page++;
   off = 0;
  }
 }

 mutex_unlock(&ee1004_bus_lock);

 return requested;
}
