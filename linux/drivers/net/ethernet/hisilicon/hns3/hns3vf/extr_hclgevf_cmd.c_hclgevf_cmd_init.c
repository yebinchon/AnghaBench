
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {int lock; scalar_t__ next_to_use; scalar_t__ next_to_clean; } ;
struct TYPE_9__ {int lock; scalar_t__ next_to_use; scalar_t__ next_to_clean; } ;
struct TYPE_11__ {TYPE_3__ csq; TYPE_2__ crq; } ;
struct TYPE_13__ {TYPE_4__ cmq; } ;
struct TYPE_8__ {int count; scalar_t__ tail; scalar_t__ head; struct hclgevf_dev* hdev; } ;
struct hclgevf_dev {int state; TYPE_5__* pdev; int fw_version; TYPE_6__ hw; TYPE_1__ arq; } ;
struct TYPE_12__ {int dev; } ;


 int EBUSY ;
 int HCLGEVF_STATE_CMD_DISABLE ;
 int HNAE3_FW_VERSION_BYTE0_MASK ;
 int HNAE3_FW_VERSION_BYTE0_SHIFT ;
 int HNAE3_FW_VERSION_BYTE1_MASK ;
 int HNAE3_FW_VERSION_BYTE1_SHIFT ;
 int HNAE3_FW_VERSION_BYTE2_MASK ;
 int HNAE3_FW_VERSION_BYTE2_SHIFT ;
 int HNAE3_FW_VERSION_BYTE3_MASK ;
 int HNAE3_FW_VERSION_BYTE3_SHIFT ;
 int atomic_set (int *,int ) ;
 int clear_bit (int ,int *) ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int ,int ,int ,int ) ;
 int hclgevf_cmd_init_regs (TYPE_6__*) ;
 int hclgevf_cmd_query_firmware_version (TYPE_6__*,int *) ;
 scalar_t__ hclgevf_is_reset_pending (struct hclgevf_dev*) ;
 int hnae3_get_field (int ,int ,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_bh (int *) ;

int hclgevf_cmd_init(struct hclgevf_dev *hdev)
{
 u32 version;
 int ret;

 spin_lock_bh(&hdev->hw.cmq.csq.lock);
 spin_lock(&hdev->hw.cmq.crq.lock);


 hdev->arq.hdev = hdev;
 hdev->arq.head = 0;
 hdev->arq.tail = 0;
 atomic_set(&hdev->arq.count, 0);
 hdev->hw.cmq.csq.next_to_clean = 0;
 hdev->hw.cmq.csq.next_to_use = 0;
 hdev->hw.cmq.crq.next_to_clean = 0;
 hdev->hw.cmq.crq.next_to_use = 0;

 hclgevf_cmd_init_regs(&hdev->hw);

 spin_unlock(&hdev->hw.cmq.crq.lock);
 spin_unlock_bh(&hdev->hw.cmq.csq.lock);

 clear_bit(HCLGEVF_STATE_CMD_DISABLE, &hdev->state);




 if (hclgevf_is_reset_pending(hdev)) {
  ret = -EBUSY;
  goto err_cmd_init;
 }


 ret = hclgevf_cmd_query_firmware_version(&hdev->hw, &version);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "failed(%d) to query firmware version\n", ret);
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

 return 0;

err_cmd_init:
 set_bit(HCLGEVF_STATE_CMD_DISABLE, &hdev->state);

 return ret;
}
