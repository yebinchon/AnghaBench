
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int start; } ;
struct fjes_hw {TYPE_1__ hw_res; int base; } ;


 int iounmap (int ) ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static void fjes_hw_iounmap(struct fjes_hw *hw)
{
 iounmap(hw->base);
 release_mem_region(hw->hw_res.start, hw->hw_res.size);
}
