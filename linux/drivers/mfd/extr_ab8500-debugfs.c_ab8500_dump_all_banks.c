
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int AB8500_NUM_BANKS ;
 int ab8500_registers_print (struct device*,unsigned int,int *) ;
 int dev_info (struct device*,char*,...) ;

void ab8500_dump_all_banks(struct device *dev)
{
 unsigned int i;

 dev_info(dev, "ab8500 register values:\n");

 for (i = 1; i < AB8500_NUM_BANKS; i++) {
  dev_info(dev, " bank 0x%02X:\n", i);
  ab8500_registers_print(dev, i, ((void*)0));
 }
}
