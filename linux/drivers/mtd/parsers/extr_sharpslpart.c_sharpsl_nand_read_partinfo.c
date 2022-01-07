
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sharpsl_nand_partinfo {int start; int end; int magic; } ;
struct sharpsl_ftl {int dummy; } ;
struct mtd_info {int size; } ;
typedef int loff_t ;


 scalar_t__ BOOT_MAGIC ;
 int EINVAL ;
 scalar_t__ FSRO_MAGIC ;
 scalar_t__ FSRW_MAGIC ;
 scalar_t__ be32_to_cpu (int ) ;
 int cpu_to_le32 (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int pr_err (char*) ;
 int sharpsl_nand_read_laddr (struct mtd_info*,int ,size_t,struct sharpsl_nand_partinfo*,struct sharpsl_ftl*) ;

__attribute__((used)) static int sharpsl_nand_read_partinfo(struct mtd_info *master,
          loff_t from,
          size_t len,
          struct sharpsl_nand_partinfo *buf,
          struct sharpsl_ftl *ftl)
{
 int ret;

 ret = sharpsl_nand_read_laddr(master, from, len, buf, ftl);
 if (ret)
  return ret;


 if (be32_to_cpu(buf[0].magic) != BOOT_MAGIC ||
     be32_to_cpu(buf[1].magic) != FSRO_MAGIC ||
     be32_to_cpu(buf[2].magic) != FSRW_MAGIC) {
  pr_err("sharpslpart: magic values mismatch\n");
  return -EINVAL;
 }


 buf[2].end = cpu_to_le32(master->size);


 if (le32_to_cpu(buf[0].end) <= le32_to_cpu(buf[0].start) ||
     le32_to_cpu(buf[1].start) < le32_to_cpu(buf[0].end) ||
     le32_to_cpu(buf[1].end) <= le32_to_cpu(buf[1].start) ||
     le32_to_cpu(buf[2].start) < le32_to_cpu(buf[1].end) ||
     le32_to_cpu(buf[2].end) <= le32_to_cpu(buf[2].start)) {
  pr_err("sharpslpart: partition sizes mismatch\n");
  return -EINVAL;
 }

 return 0;
}
