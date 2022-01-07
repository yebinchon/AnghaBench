
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * share; } ;
struct fjes_hw {TYPE_1__ hw_info; } ;


 int kfree (int *) ;

__attribute__((used)) static void fjes_hw_free_shared_status_region(struct fjes_hw *hw)
{
 kfree(hw->hw_info.share);
 hw->hw_info.share = ((void*)0);
}
