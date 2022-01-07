
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {scalar_t__ driver_data; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct at24_chip_data {int dummy; } ;


 int ENODEV ;
 struct at24_chip_data const* ERR_PTR (int ) ;
 struct at24_chip_data* acpi_device_get_match_data (struct device*) ;
 int at24_ids ;
 int at24_of_match ;
 struct i2c_device_id* i2c_match_id (int ,int ) ;
 struct at24_chip_data* of_device_get_match_data (struct device*) ;
 scalar_t__ of_match_device (int ,struct device*) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static const struct at24_chip_data *at24_get_chip_data(struct device *dev)
{
 struct device_node *of_node = dev->of_node;
 const struct at24_chip_data *cdata;
 const struct i2c_device_id *id;

 id = i2c_match_id(at24_ids, to_i2c_client(dev));






 if (of_node && of_match_device(at24_of_match, dev))
  cdata = of_device_get_match_data(dev);
 else if (id)
  cdata = (void *)id->driver_data;
 else
  cdata = acpi_device_get_match_data(dev);

 if (!cdata)
  return ERR_PTR(-ENODEV);

 return cdata;
}
