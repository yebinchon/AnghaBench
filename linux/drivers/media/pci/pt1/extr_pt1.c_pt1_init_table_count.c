
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt1 {int dummy; } ;


 int pt1_write_reg (struct pt1*,int ,int) ;

__attribute__((used)) static void pt1_init_table_count(struct pt1 *pt1)
{
 pt1_write_reg(pt1, 0, 0x00000010);
}
