
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {void* desc_num; int lock; } ;
struct TYPE_6__ {void* desc_num; int lock; } ;
struct TYPE_8__ {TYPE_5__ csq; TYPE_1__ crq; int tx_timeout; } ;
struct TYPE_9__ {TYPE_3__ cmq; } ;
struct hclgevf_dev {TYPE_4__ hw; TYPE_2__* pdev; } ;
struct TYPE_7__ {int dev; } ;


 int HCLGEVF_CMDQ_TX_TIMEOUT ;
 void* HCLGEVF_NIC_CMQ_DESC_NUM ;
 int HCLGEVF_TYPE_CRQ ;
 int HCLGEVF_TYPE_CSQ ;
 int dev_err (int *,char*,int) ;
 int hclgevf_alloc_cmd_queue (struct hclgevf_dev*,int ) ;
 int hclgevf_free_cmd_desc (TYPE_5__*) ;
 int spin_lock_init (int *) ;

int hclgevf_cmd_queue_init(struct hclgevf_dev *hdev)
{
 int ret;


 spin_lock_init(&hdev->hw.cmq.csq.lock);
 spin_lock_init(&hdev->hw.cmq.crq.lock);

 hdev->hw.cmq.tx_timeout = HCLGEVF_CMDQ_TX_TIMEOUT;
 hdev->hw.cmq.csq.desc_num = HCLGEVF_NIC_CMQ_DESC_NUM;
 hdev->hw.cmq.crq.desc_num = HCLGEVF_NIC_CMQ_DESC_NUM;

 ret = hclgevf_alloc_cmd_queue(hdev, HCLGEVF_TYPE_CSQ);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "CSQ ring setup error %d\n", ret);
  return ret;
 }

 ret = hclgevf_alloc_cmd_queue(hdev, HCLGEVF_TYPE_CRQ);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "CRQ ring setup error %d\n", ret);
  goto err_csq;
 }

 return 0;
err_csq:
 hclgevf_free_cmd_desc(&hdev->hw.cmq.csq);
 return ret;
}
