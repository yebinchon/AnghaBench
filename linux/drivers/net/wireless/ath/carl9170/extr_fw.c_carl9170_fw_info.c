
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct carl9170fw_motd_desc {int release; int fw_year_month_day; } ;
struct ar9170 {TYPE_2__* hw; TYPE_3__* udev; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {TYPE_1__* wiphy; } ;
struct TYPE_4__ {int fw_version; } ;


 int CARL9170FW_API_MAX_VER ;
 int CARL9170FW_API_MIN_VER ;
 int CARL9170FW_GET_DAY (int ) ;
 int CARL9170FW_GET_MONTH (int ) ;
 int CARL9170FW_GET_YEAR (int ) ;
 int CARL9170FW_MOTD_DESC_CUR_VER ;
 int CARL9170FW_MOTD_RELEASE_LEN ;
 int CARL9170FW_VERSION_DAY ;
 int CARL9170FW_VERSION_GIT ;
 int CARL9170FW_VERSION_MONTH ;
 int CARL9170FW_VERSION_YEAR ;
 int MOTD_MAGIC ;
 struct carl9170fw_motd_desc* carl9170_fw_find_desc (struct ar9170*,int ,int,int ) ;
 int dev_info (int *,char*,unsigned int,int ,int ,int ,int ,...) ;
 int le32_to_cpu (int ) ;
 int strlcpy (int ,int ,int) ;
 unsigned int strnlen (int ,int ) ;

__attribute__((used)) static void carl9170_fw_info(struct ar9170 *ar)
{
 const struct carl9170fw_motd_desc *motd_desc;
 unsigned int str_ver_len;
 u32 fw_date;

 dev_info(&ar->udev->dev, "driver   API: %s 2%03d-%02d-%02d [%d-%d]\n",
  CARL9170FW_VERSION_GIT, CARL9170FW_VERSION_YEAR,
  CARL9170FW_VERSION_MONTH, CARL9170FW_VERSION_DAY,
  CARL9170FW_API_MIN_VER, CARL9170FW_API_MAX_VER);

 motd_desc = carl9170_fw_find_desc(ar, MOTD_MAGIC,
  sizeof(*motd_desc), CARL9170FW_MOTD_DESC_CUR_VER);

 if (motd_desc) {
  str_ver_len = strnlen(motd_desc->release,
   CARL9170FW_MOTD_RELEASE_LEN);

  fw_date = le32_to_cpu(motd_desc->fw_year_month_day);

  dev_info(&ar->udev->dev, "firmware API: %.*s 2%03d-%02d-%02d\n",
    str_ver_len, motd_desc->release,
    CARL9170FW_GET_YEAR(fw_date),
    CARL9170FW_GET_MONTH(fw_date),
    CARL9170FW_GET_DAY(fw_date));

  strlcpy(ar->hw->wiphy->fw_version, motd_desc->release,
   sizeof(ar->hw->wiphy->fw_version));
 }
}
