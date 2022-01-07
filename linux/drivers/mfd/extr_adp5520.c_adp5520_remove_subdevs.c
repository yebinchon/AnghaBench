
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adp5520_chip {int dev; } ;


 int __remove_subdev ;
 int device_for_each_child (int ,int *,int ) ;

__attribute__((used)) static int adp5520_remove_subdevs(struct adp5520_chip *chip)
{
 return device_for_each_child(chip->dev, ((void*)0), __remove_subdev);
}
