
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_file_info {int mtd; } ;
struct file {struct mtd_file_info* private_data; } ;


 int mtd_mmap_capabilities (int ) ;

__attribute__((used)) static unsigned mtdchar_mmap_capabilities(struct file *file)
{
 struct mtd_file_info *mfi = file->private_data;

 return mtd_mmap_capabilities(mfi->mtd);
}
