
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int parent; } ;
struct ab3100 {scalar_t__ chip_id; } ;


 struct ab3100* dev_get_drvdata (int ) ;

__attribute__((used)) static int ab3100_get_chip_id(struct device *dev)
{
 struct ab3100 *ab3100 = dev_get_drvdata(dev->parent);

 return (int)ab3100->chip_id;
}
