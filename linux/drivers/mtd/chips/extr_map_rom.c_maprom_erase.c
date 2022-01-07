
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
struct erase_info {int dummy; } ;


 int EROFS ;

__attribute__((used)) static int maprom_erase (struct mtd_info *mtd, struct erase_info *info)
{

 return -EROFS;
}
