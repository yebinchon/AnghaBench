
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct mmc_card {int dummy; } ;
struct mmc_blk_data {unsigned int part_type; TYPE_1__* disk; int part; } ;
typedef int sector_t ;
typedef int cap_str ;
struct TYPE_3__ {int disk_name; } ;


 scalar_t__ IS_ERR (struct mmc_blk_data*) ;
 int PTR_ERR (struct mmc_blk_data*) ;
 int STRING_UNITS_2 ;
 int disk_to_dev (TYPE_1__*) ;
 scalar_t__ get_capacity (TYPE_1__*) ;
 int list_add (int *,int *) ;
 struct mmc_blk_data* mmc_blk_alloc_req (struct mmc_card*,int ,int ,int,char const*,int) ;
 int mmc_card_id (struct mmc_card*) ;
 int mmc_card_name (struct mmc_card*) ;
 int pr_info (char*,int ,int ,int ,unsigned int,char*) ;
 int string_get_size (int ,int,int ,char*,int) ;

__attribute__((used)) static int mmc_blk_alloc_part(struct mmc_card *card,
         struct mmc_blk_data *md,
         unsigned int part_type,
         sector_t size,
         bool default_ro,
         const char *subname,
         int area_type)
{
 char cap_str[10];
 struct mmc_blk_data *part_md;

 part_md = mmc_blk_alloc_req(card, disk_to_dev(md->disk), size, default_ro,
        subname, area_type);
 if (IS_ERR(part_md))
  return PTR_ERR(part_md);
 part_md->part_type = part_type;
 list_add(&part_md->part, &md->part);

 string_get_size((u64)get_capacity(part_md->disk), 512, STRING_UNITS_2,
   cap_str, sizeof(cap_str));
 pr_info("%s: %s %s partition %u %s\n",
        part_md->disk->disk_name, mmc_card_id(card),
        mmc_card_name(card), part_md->part_type, cap_str);
 return 0;
}
