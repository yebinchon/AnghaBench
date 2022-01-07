
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ partition_setting_completed; } ;
struct mmc_card {int host; TYPE_1__ ext_csd; } ;


 int EXT_CSD_GP_SIZE_MULT ;
 size_t EXT_CSD_HC_ERASE_GRP_SIZE ;
 size_t EXT_CSD_HC_WP_GRP_SIZE ;
 size_t EXT_CSD_PARTITION_SUPPORT ;
 scalar_t__ EXT_CSD_PART_CONFIG_ACC_GP0 ;
 int EXT_CSD_PART_SUPPORT_PART_EN ;
 int MMC_BLK_DATA_AREA_GP ;
 int MMC_NUM_GP_PARTITION ;
 int mmc_hostname (int ) ;
 int mmc_part_add (struct mmc_card*,unsigned int,scalar_t__,char*,int,int,int ) ;
 int pr_warn (char*,int ) ;

__attribute__((used)) static void mmc_manage_gp_partitions(struct mmc_card *card, u8 *ext_csd)
{
 int idx;
 u8 hc_erase_grp_sz, hc_wp_grp_sz;
 unsigned int part_size;






 if (ext_csd[EXT_CSD_PARTITION_SUPPORT] &
     EXT_CSD_PART_SUPPORT_PART_EN) {
  hc_erase_grp_sz =
   ext_csd[EXT_CSD_HC_ERASE_GRP_SIZE];
  hc_wp_grp_sz =
   ext_csd[EXT_CSD_HC_WP_GRP_SIZE];

  for (idx = 0; idx < MMC_NUM_GP_PARTITION; idx++) {
   if (!ext_csd[EXT_CSD_GP_SIZE_MULT + idx * 3] &&
       !ext_csd[EXT_CSD_GP_SIZE_MULT + idx * 3 + 1] &&
       !ext_csd[EXT_CSD_GP_SIZE_MULT + idx * 3 + 2])
    continue;
   if (card->ext_csd.partition_setting_completed == 0) {
    pr_warn("%s: has partition size defined without partition complete\n",
     mmc_hostname(card->host));
    break;
   }
   part_size =
    (ext_csd[EXT_CSD_GP_SIZE_MULT + idx * 3 + 2]
    << 16) +
    (ext_csd[EXT_CSD_GP_SIZE_MULT + idx * 3 + 1]
    << 8) +
    ext_csd[EXT_CSD_GP_SIZE_MULT + idx * 3];
   part_size *= (size_t)(hc_erase_grp_sz *
    hc_wp_grp_sz);
   mmc_part_add(card, part_size << 19,
    EXT_CSD_PART_CONFIG_ACC_GP0 + idx,
    "gp%d", idx, 0,
    MMC_BLK_DATA_AREA_GP);
  }
 }
}
