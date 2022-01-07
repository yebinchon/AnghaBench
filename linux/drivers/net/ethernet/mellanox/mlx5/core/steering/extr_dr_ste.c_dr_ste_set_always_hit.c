
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dr_hw_ste_format {int mask; int tag; } ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void dr_ste_set_always_hit(struct dr_hw_ste_format *hw_ste)
{
 memset(&hw_ste->tag, 0, sizeof(hw_ste->tag));
 memset(&hw_ste->mask, 0, sizeof(hw_ste->mask));
}
