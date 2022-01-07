
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_file_info {TYPE_1__* mtd; } ;
struct file {struct mtd_file_info* private_data; } ;
typedef int loff_t ;
struct TYPE_2__ {int size; } ;


 int fixed_size_llseek (struct file*,int ,int,int ) ;

__attribute__((used)) static loff_t mtdchar_lseek(struct file *file, loff_t offset, int orig)
{
 struct mtd_file_info *mfi = file->private_data;
 return fixed_size_llseek(file, offset, orig, mfi->mtd->size);
}
