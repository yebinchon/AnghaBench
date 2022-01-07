
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6586x {int dev; } ;


 int __remove_subdev ;
 int device_for_each_child (int ,int *,int ) ;

__attribute__((used)) static int tps6586x_remove_subdevs(struct tps6586x *tps6586x)
{
 return device_for_each_child(tps6586x->dev, ((void*)0), __remove_subdev);
}
