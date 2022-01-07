
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;
typedef int fmode_t ;


 int msb_disk_release (struct gendisk*) ;

__attribute__((used)) static void msb_bd_release(struct gendisk *disk, fmode_t mode)
{
 msb_disk_release(disk);
}
