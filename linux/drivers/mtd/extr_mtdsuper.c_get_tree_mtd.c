
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int bd_dev; } ;
struct fs_context {char* source; int sb_flags; } ;
struct block_device {int bd_dev; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct mtd_info*) ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int MTD_BLOCK_MAJOR ;
 int PTR_ERR (struct mtd_info*) ;
 int SB_SILENT ;
 int bdput (struct mtd_info*) ;
 int errorf (struct fs_context*,char*,char*,...) ;
 struct mtd_info* get_mtd_device_nm (char*) ;
 int invalf (struct fs_context*,char*) ;
 scalar_t__ isdigit (char) ;
 struct mtd_info* lookup_bdev (char*) ;
 int mtd_get_sb (struct fs_context*,struct mtd_info*,int (*) (struct super_block*,struct fs_context*)) ;
 int mtd_get_sb_by_nr (struct fs_context*,int,int (*) (struct super_block*,struct fs_context*)) ;
 int pr_debug (char*,...) ;
 int simple_strtoul (char*,char**,int ) ;

int get_tree_mtd(struct fs_context *fc,
       int (*fill_super)(struct super_block *sb,
    struct fs_context *fc))
{




 int mtdnr;

 if (!fc->source)
  return invalf(fc, "No source specified");

 pr_debug("MTDSB: dev_name \"%s\"\n", fc->source);






 if (fc->source[0] == 'm' &&
     fc->source[1] == 't' &&
     fc->source[2] == 'd') {
  if (fc->source[3] == ':') {
   struct mtd_info *mtd;


   pr_debug("MTDSB: mtd:%%s, name \"%s\"\n",
     fc->source + 4);

   mtd = get_mtd_device_nm(fc->source + 4);
   if (!IS_ERR(mtd))
    return mtd_get_sb(fc, mtd, fill_super);

   errorf(fc, "MTD: MTD device with name \"%s\" not found",
          fc->source + 4);

  } else if (isdigit(fc->source[3])) {

   char *endptr;

   mtdnr = simple_strtoul(fc->source + 3, &endptr, 0);
   if (!*endptr) {

    pr_debug("MTDSB: mtd%%d, mtdnr %d\n", mtdnr);
    return mtd_get_sb_by_nr(fc, mtdnr, fill_super);
   }
  }
 }
 if (!(fc->sb_flags & SB_SILENT))
  errorf(fc, "MTD: Attempt to mount non-MTD device \"%s\"",
         fc->source);
 return -EINVAL;
}
