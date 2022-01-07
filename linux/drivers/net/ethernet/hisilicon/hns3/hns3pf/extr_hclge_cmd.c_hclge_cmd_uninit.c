
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lock; } ;
struct TYPE_7__ {int lock; } ;
struct TYPE_8__ {TYPE_1__ csq; TYPE_2__ crq; } ;
struct TYPE_9__ {TYPE_3__ cmq; } ;
struct hclge_dev {TYPE_4__ hw; int state; } ;


 int HCLGE_STATE_CMD_DISABLE ;
 int hclge_cmd_uninit_regs (TYPE_4__*) ;
 int hclge_destroy_cmd_queue (TYPE_4__*) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_bh (int *) ;

void hclge_cmd_uninit(struct hclge_dev *hdev)
{
 spin_lock_bh(&hdev->hw.cmq.csq.lock);
 spin_lock(&hdev->hw.cmq.crq.lock);
 set_bit(HCLGE_STATE_CMD_DISABLE, &hdev->state);
 hclge_cmd_uninit_regs(&hdev->hw);
 spin_unlock(&hdev->hw.cmq.crq.lock);
 spin_unlock_bh(&hdev->hw.cmq.csq.lock);

 hclge_destroy_cmd_queue(&hdev->hw);
}
