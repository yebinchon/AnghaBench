
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct mtd_info {int dummy; } ;
typedef int buf ;


 scalar_t__ UBI_EC_MAGIC ;
 int mtd_is_bitflip (int) ;
 int mtd_read (struct mtd_info*,size_t,int,size_t*,int *) ;
 int pr_err (char*,size_t,int) ;

__attribute__((used)) static const char *parser_trx_data_part_name(struct mtd_info *master,
          size_t offset)
{
 uint32_t buf;
 size_t bytes_read;
 int err;

 err = mtd_read(master, offset, sizeof(buf), &bytes_read,
   (uint8_t *)&buf);
 if (err && !mtd_is_bitflip(err)) {
  pr_err("mtd_read error while parsing (offset: 0x%zX): %d\n",
   offset, err);
  goto out_default;
 }

 if (buf == UBI_EC_MAGIC)
  return "ubi";

out_default:
 return "rootfs";
}
