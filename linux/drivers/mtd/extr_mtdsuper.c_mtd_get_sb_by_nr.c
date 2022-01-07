
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
struct fs_context {int dummy; } ;


 scalar_t__ IS_ERR (struct mtd_info*) ;
 int PTR_ERR (struct mtd_info*) ;
 int errorf (struct fs_context*,char*,int) ;
 struct mtd_info* get_mtd_device (int *,int) ;
 int mtd_get_sb (struct fs_context*,struct mtd_info*,int (*) (struct super_block*,struct fs_context*)) ;

__attribute__((used)) static int mtd_get_sb_by_nr(struct fs_context *fc, int mtdnr,
       int (*fill_super)(struct super_block *,
           struct fs_context *))
{
 struct mtd_info *mtd;

 mtd = get_mtd_device(((void*)0), mtdnr);
 if (IS_ERR(mtd)) {
  errorf(fc, "MTDSB: Device #%u doesn't appear to exist\n", mtdnr);
  return PTR_ERR(mtd);
 }

 return mtd_get_sb(fc, mtd, fill_super);
}
