
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int size; int start; } ;
struct fjes_hw {TYPE_1__ hw_res; } ;


 int fjes_driver_name ;
 scalar_t__ ioremap_nocache (int ,int ) ;
 int pr_err (char*) ;
 int request_mem_region (int ,int ,int ) ;

__attribute__((used)) static u8 *fjes_hw_iomap(struct fjes_hw *hw)
{
 u8 *base;

 if (!request_mem_region(hw->hw_res.start, hw->hw_res.size,
    fjes_driver_name)) {
  pr_err("request_mem_region failed\n");
  return ((void*)0);
 }

 base = (u8 *)ioremap_nocache(hw->hw_res.start, hw->hw_res.size);

 return base;
}
