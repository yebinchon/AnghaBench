
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
struct mtd_concat {int num_subdev; struct mtd_info** subdev; } ;


 struct mtd_concat* CONCAT (struct mtd_info*) ;
 int mtd_sync (struct mtd_info*) ;

__attribute__((used)) static void concat_sync(struct mtd_info *mtd)
{
 struct mtd_concat *concat = CONCAT(mtd);
 int i;

 for (i = 0; i < concat->num_subdev; i++) {
  struct mtd_info *subdev = concat->subdev[i];
  mtd_sync(subdev);
 }
}
