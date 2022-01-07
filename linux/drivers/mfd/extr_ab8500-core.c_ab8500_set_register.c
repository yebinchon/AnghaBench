
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int parent; } ;
struct ab8500 {int transfer_ongoing; } ;


 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 struct ab8500* dev_get_drvdata (int ) ;
 int set_register_interruptible (struct ab8500*,int ,int ,int ) ;

__attribute__((used)) static int ab8500_set_register(struct device *dev, u8 bank,
 u8 reg, u8 value)
{
 int ret;
 struct ab8500 *ab8500 = dev_get_drvdata(dev->parent);

 atomic_inc(&ab8500->transfer_ongoing);
 ret = set_register_interruptible(ab8500, bank, reg, value);
 atomic_dec(&ab8500->transfer_ongoing);
 return ret;
}
