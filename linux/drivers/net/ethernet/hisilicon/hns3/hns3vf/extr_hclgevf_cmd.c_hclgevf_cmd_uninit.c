
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
struct TYPE_4__ {TYPE_2__ crq; TYPE_2__ csq; } ;
struct TYPE_6__ {TYPE_1__ cmq; } ;
struct hclgevf_dev {TYPE_3__ hw; int state; } ;


 int HCLGEVF_STATE_CMD_DISABLE ;
 int clear_bit (int ,int *) ;
 int hclgevf_cmd_uninit_regs (TYPE_3__*) ;
 int hclgevf_free_cmd_desc (TYPE_2__*) ;
 int spin_lock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_bh (int *) ;

void hclgevf_cmd_uninit(struct hclgevf_dev *hdev)
{
 spin_lock_bh(&hdev->hw.cmq.csq.lock);
 spin_lock(&hdev->hw.cmq.crq.lock);
 clear_bit(HCLGEVF_STATE_CMD_DISABLE, &hdev->state);
 hclgevf_cmd_uninit_regs(&hdev->hw);
 spin_unlock(&hdev->hw.cmq.crq.lock);
 spin_unlock_bh(&hdev->hw.cmq.csq.lock);
 hclgevf_free_cmd_desc(&hdev->hw.cmq.csq);
 hclgevf_free_cmd_desc(&hdev->hw.cmq.crq);
}
