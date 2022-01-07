
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8997_platform_data {int ono; } ;
struct device {int of_node; } ;


 int ENOMEM ;
 struct max8997_platform_data* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct max8997_platform_data* devm_kzalloc (struct device*,int,int ) ;
 int irq_of_parse_and_map (int ,int) ;

__attribute__((used)) static struct max8997_platform_data *max8997_i2c_parse_dt_pdata(
     struct device *dev)
{
 struct max8997_platform_data *pd;

 pd = devm_kzalloc(dev, sizeof(*pd), GFP_KERNEL);
 if (!pd)
  return ERR_PTR(-ENOMEM);

 pd->ono = irq_of_parse_and_map(dev->of_node, 1);

 return pd;
}
