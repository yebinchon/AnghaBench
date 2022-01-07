
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;
typedef int __be32 ;


 unsigned long BIT (unsigned int) ;
 int * of_get_address (int ,int ,int *,int *) ;
 unsigned int of_read_number (int const*,int) ;

unsigned int jz4780_nemc_num_banks(struct device *dev)
{
 const __be32 *prop;
 unsigned int bank, count = 0;
 unsigned long referenced = 0;
 int i = 0;

 while ((prop = of_get_address(dev->of_node, i++, ((void*)0), ((void*)0)))) {
  bank = of_read_number(prop, 1);
  if (!(referenced & BIT(bank))) {
   referenced |= BIT(bank);
   count++;
  }
 }

 return count;
}
