
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef scalar_t__ u64 ;
typedef int trx ;
struct trx_header {scalar_t__ magic; scalar_t__* offset; } ;
struct mtd_partition {char* name; scalar_t__ offset; scalar_t__ size; } ;
struct mtd_part_parser_data {int dummy; } ;
struct mtd_info {scalar_t__ size; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ TRX_MAGIC ;
 int TRX_PARSER_MAX_PARTS ;
 struct mtd_partition* kcalloc (int ,int,int ) ;
 int kfree (struct mtd_partition*) ;
 int mtd_read (struct mtd_info*,int ,int,size_t*,size_t*) ;
 char* parser_trx_data_part_name (struct mtd_info*,scalar_t__) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int parser_trx_parse(struct mtd_info *mtd,
       const struct mtd_partition **pparts,
       struct mtd_part_parser_data *data)
{
 struct mtd_partition *parts;
 struct mtd_partition *part;
 struct trx_header trx;
 size_t bytes_read;
 uint8_t curr_part = 0, i = 0;
 int err;

 parts = kcalloc(TRX_PARSER_MAX_PARTS, sizeof(struct mtd_partition),
   GFP_KERNEL);
 if (!parts)
  return -ENOMEM;

 err = mtd_read(mtd, 0, sizeof(trx), &bytes_read, (uint8_t *)&trx);
 if (err) {
  pr_err("MTD reading error: %d\n", err);
  kfree(parts);
  return err;
 }

 if (trx.magic != TRX_MAGIC) {
  kfree(parts);
  return -ENOENT;
 }


 if (trx.offset[2]) {
  part = &parts[curr_part++];
  part->name = "loader";
  part->offset = trx.offset[i];
  i++;
 }

 if (trx.offset[i]) {
  part = &parts[curr_part++];
  part->name = "linux";
  part->offset = trx.offset[i];
  i++;
 }

 if (trx.offset[i]) {
  part = &parts[curr_part++];
  part->name = parser_trx_data_part_name(mtd, trx.offset[i]);
  part->offset = trx.offset[i];
  i++;
 }





 for (i = 0; i < curr_part; i++) {
  u64 next_part_offset = (i < curr_part - 1) ?
           parts[i + 1].offset : mtd->size;

  parts[i].size = next_part_offset - parts[i].offset;
 }

 *pparts = parts;
 return i;
}
