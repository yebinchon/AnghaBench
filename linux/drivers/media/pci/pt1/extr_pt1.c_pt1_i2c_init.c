
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt1 {int dummy; } ;


 int pt1_i2c_emit (struct pt1*,int,int ,int ,int,int,int ) ;

__attribute__((used)) static void pt1_i2c_init(struct pt1 *pt1)
{
 int i;
 for (i = 0; i < 1024; i++)
  pt1_i2c_emit(pt1, i, 0, 0, 1, 1, 0);
}
