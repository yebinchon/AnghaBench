
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct seq_file {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {unsigned int num_ranges; TYPE_1__* range; } ;
struct TYPE_3__ {size_t first; size_t last; } ;


 int abx500_get_register_interruptible (struct device*,int ,int ,int *) ;
 TYPE_2__* debug_ranges ;
 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*,size_t,size_t,int ) ;
 scalar_t__ seq_has_overflowed (struct seq_file*) ;
 int seq_printf (struct seq_file*,char*,size_t,size_t,int ) ;

__attribute__((used)) static int ab8500_registers_print(struct device *dev, u32 bank,
      struct seq_file *s)
{
 unsigned int i;

 for (i = 0; i < debug_ranges[bank].num_ranges; i++) {
  u32 reg;

  for (reg = debug_ranges[bank].range[i].first;
   reg <= debug_ranges[bank].range[i].last;
   reg++) {
   u8 value;
   int err;

   err = abx500_get_register_interruptible(dev,
    (u8)bank, (u8)reg, &value);
   if (err < 0) {
    dev_err(dev, "ab->read fail %d\n", err);
    return err;
   }

   if (s) {
    seq_printf(s, "  [0x%02X/0x%02X]: 0x%02X\n",
        bank, reg, value);




    if (seq_has_overflowed(s))
     return 0;
   } else {
    dev_info(dev, " [0x%02X/0x%02X]: 0x%02X\n",
      bank, reg, value);
   }
  }
 }

 return 0;
}
