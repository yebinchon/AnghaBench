
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_resconfig {scalar_t__ resource; } ;



__attribute__((used)) static void twl4030_patch_rconfig(struct twl4030_resconfig *common,
      struct twl4030_resconfig *board)
{
 while (common->resource) {
  struct twl4030_resconfig *b = board;

  while (b->resource) {
   if (b->resource == common->resource) {
    *common = *b;
    break;
   }
   b++;
  }
  common++;
 }
}
