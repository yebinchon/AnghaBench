
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt1 {int dummy; } ;


 int pt1_write_reg (struct pt1*,int,int) ;

__attribute__((used)) static void pt1_register_tables(struct pt1 *pt1, u32 first_pfn)
{
 pt1_write_reg(pt1, 5, first_pfn);
 pt1_write_reg(pt1, 0, 0x0c000040);
}
