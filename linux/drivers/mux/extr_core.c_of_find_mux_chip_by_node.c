
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mux_chip {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 struct device* class_find_device_by_of_node (int *,struct device_node*) ;
 int mux_class ;
 struct mux_chip* to_mux_chip (struct device*) ;

__attribute__((used)) static struct mux_chip *of_find_mux_chip_by_node(struct device_node *np)
{
 struct device *dev;

 dev = class_find_device_by_of_node(&mux_class, np);

 return dev ? to_mux_chip(dev) : ((void*)0);
}
