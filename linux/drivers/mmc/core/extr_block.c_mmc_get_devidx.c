
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int first_minor; } ;


 int perdev_minors ;

__attribute__((used)) static inline int mmc_get_devidx(struct gendisk *disk)
{
 int devidx = disk->first_minor / perdev_minors;
 return devidx;
}
