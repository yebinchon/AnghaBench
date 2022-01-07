
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int lock; scalar_t__ next_to_use; scalar_t__ next_to_clean; } ;
struct TYPE_7__ {int lock; scalar_t__ next_to_use; scalar_t__ next_to_clean; } ;
struct TYPE_9__ {TYPE_2__ csq; TYPE_1__ crq; } ;
struct TYPE_11__ {TYPE_3__ cmq; } ;
struct hclge_dev {int state; TYPE_4__* pdev; int fw_version; TYPE_5__ hw; } ;
struct TYPE_10__ {int dev; } ;


 int EBUSY ;
 int HCLGE_STATE_CMD_DISABLE ;
 int HNAE3_FW_VERSION_BYTE0_MASK ;
 int HNAE3_FW_VERSION_BYTE0_SHIFT ;
 int HNAE3_FW_VERSION_BYTE1_MASK ;
 int HNAE3_FW_VERSION_BYTE1_SHIFT ;
 int HNAE3_FW_VERSION_BYTE2_MASK ;
 int HNAE3_FW_VERSION_BYTE2_SHIFT ;
 int HNAE3_FW_VERSION_BYTE3_MASK ;
 int HNAE3_FW_VERSION_BYTE3_SHIFT ;
 int clear_bit (int ,int *) ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int ,int ,int ,int ) ;
 int dev_warn (int *,char*,int) ;
 int hclge_cmd_init_regs (TYPE_5__*) ;
 int hclge_cmd_query_firmware_version (TYPE_5__*,int *) ;
 int hclge_firmware_compat_config (struct hclge_dev*) ;
 scalar_t__ hclge_is_reset_pending (struct hclge_dev*) ;
 int hnae3_get_field (int ,int ,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_bh (int *) ;

int hclge_cmd_init(struct hclge_dev *hdev)
{
 u32 version;
 int ret;

 spin_lock_bh(&hdev->hw.cmq.csq.lock);
 spin_lock(&hdev->hw.cmq.crq.lock);

 hdev->hw.cmq.csq.next_to_clean = 0;
 hdev->hw.cmq.csq.next_to_use = 0;
 hdev->hw.cmq.crq.next_to_clean = 0;
 hdev->hw.cmq.crq.next_to_use = 0;

 hclge_cmd_init_regs(&hdev->hw);

 spin_unlock(&hdev->hw.cmq.crq.lock);
 spin_unlock_bh(&hdev->hw.cmq.csq.lock);

 clear_bit(HCLGE_STATE_CMD_DISABLE, &hdev->state);




 if ((hclge_is_reset_pending(hdev))) {
  ret = -EBUSY;
  goto err_cmd_init;
 }

 ret = hclge_cmd_query_firmware_version(&hdev->hw, &version);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "firmware version query failed %d\n", ret);
  goto err_cmd_init;
 }
 hdev->fw_version = version;

 dev_info(&hdev->pdev->dev, "The firmware version is %lu.%lu.%lu.%lu\n",
   hnae3_get_field(version, HNAE3_FW_VERSION_BYTE3_MASK,
     HNAE3_FW_VERSION_BYTE3_SHIFT),
   hnae3_get_field(version, HNAE3_FW_VERSION_BYTE2_MASK,
     HNAE3_FW_VERSION_BYTE2_SHIFT),
   hnae3_get_field(version, HNAE3_FW_VERSION_BYTE1_MASK,
     HNAE3_FW_VERSION_BYTE1_SHIFT),
   hnae3_get_field(version, HNAE3_FW_VERSION_BYTE0_MASK,
     HNAE3_FW_VERSION_BYTE0_SHIFT));




 ret = hclge_firmware_compat_config(hdev);
 if (ret)
  dev_warn(&hdev->pdev->dev,
    "Firmware compatible features not enabled(%d).\n",
    ret);

 return 0;

err_cmd_init:
 set_bit(HCLGE_STATE_CMD_DISABLE, &hdev->state);

 return ret;
}
