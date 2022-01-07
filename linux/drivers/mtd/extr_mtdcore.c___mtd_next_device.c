
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 struct mtd_info* idr_get_next (int *,int*) ;
 int mtd_idr ;

struct mtd_info *__mtd_next_device(int i)
{
 return idr_get_next(&mtd_idr, &i);
}
