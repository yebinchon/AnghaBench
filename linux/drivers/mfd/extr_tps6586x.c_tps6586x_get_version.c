
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6586x {int version; } ;
struct device {int dummy; } ;


 struct tps6586x* dev_get_drvdata (struct device*) ;

int tps6586x_get_version(struct device *dev)
{
 struct tps6586x *tps6586x = dev_get_drvdata(dev);

 return tps6586x->version;
}
