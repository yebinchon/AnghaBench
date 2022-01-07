
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int parent; } ;
struct ab3100 {int dummy; } ;


 int ab3100_get_register_interruptible (struct ab3100*,int ,int *) ;
 struct ab3100* dev_get_drvdata (int ) ;

__attribute__((used)) static int get_register_interruptible(struct device *dev, u8 bank, u8 reg,
          u8 *value)
{
 struct ab3100 *ab3100 = dev_get_drvdata(dev->parent);

 return ab3100_get_register_interruptible(ab3100, reg, value);
}
