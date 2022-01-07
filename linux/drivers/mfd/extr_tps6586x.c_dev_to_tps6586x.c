
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6586x {int dummy; } ;
struct device {int dummy; } ;


 struct tps6586x* i2c_get_clientdata (int ) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static inline struct tps6586x *dev_to_tps6586x(struct device *dev)
{
 return i2c_get_clientdata(to_i2c_client(dev));
}
