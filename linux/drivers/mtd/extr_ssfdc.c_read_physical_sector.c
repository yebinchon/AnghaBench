
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;


 int SECTOR_SHIFT ;
 size_t SECTOR_SIZE ;
 int mtd_read (struct mtd_info*,int,size_t,size_t*,int *) ;

__attribute__((used)) static int read_physical_sector(struct mtd_info *mtd, uint8_t *sect_buf,
    int sect_no)
{
 int ret;
 size_t retlen;
 loff_t offset = (loff_t)sect_no << SECTOR_SHIFT;

 ret = mtd_read(mtd, offset, SECTOR_SIZE, &retlen, sect_buf);
 if (ret < 0 || retlen != SECTOR_SIZE)
  return -1;

 return 0;
}
