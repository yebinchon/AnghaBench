
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dr_hw_ste_format {int* tag; scalar_t__* mask; } ;



__attribute__((used)) static void dr_ste_set_always_miss(struct dr_hw_ste_format *hw_ste)
{
 hw_ste->tag[0] = 0xdc;
 hw_ste->mask[0] = 0;
}
