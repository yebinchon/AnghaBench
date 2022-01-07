
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int memcpy (unsigned char*,unsigned char*,size_t) ;
 unsigned char* s3c_get_bufferram (struct mtd_info*,int) ;

__attribute__((used)) static int onenand_read_bufferram(struct mtd_info *mtd, int area,
      unsigned char *buffer, int offset,
      size_t count)
{
 unsigned char *p;

 p = s3c_get_bufferram(mtd, area);
 memcpy(buffer, p + offset, count);
 return 0;
}
