
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
typedef int u16 ;
struct TYPE_8__ {size_t tail; size_t head; int** msg_q; int count; } ;
struct TYPE_5__ {size_t supported; size_t advertising; } ;
struct TYPE_6__ {TYPE_1__ mac; } ;
struct hclgevf_dev {int mbx_event_pending; TYPE_4__ arq; TYPE_3__* pdev; int reset_state; int reset_pending; TYPE_2__ hw; int state; } ;
typedef int speed ;
typedef enum hnae3_reset_type { ____Placeholder_hnae3_reset_type } hnae3_reset_type ;
struct TYPE_7__ {int dev; } ;


 int HCLGEVF_RESET_PENDING ;
 int HCLGEVF_STATE_CMD_DISABLE ;




 int atomic_dec (int *) ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*) ;
 int hclge_mbx_head_ptr_move_arq (TYPE_4__) ;
 int hclgevf_reset_task_schedule (struct hclgevf_dev*) ;
 int hclgevf_update_link_status (struct hclgevf_dev*,int) ;
 int hclgevf_update_port_base_vlan_info (struct hclgevf_dev*,int,int *,int) ;
 int hclgevf_update_speed_duplex (struct hclgevf_dev*,size_t,int ) ;
 int memcpy (size_t*,int*,int) ;
 int set_bit (int,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void hclgevf_mbx_async_handler(struct hclgevf_dev *hdev)
{
 enum hnae3_reset_type reset_type;
 u16 link_status, state;
 u16 *msg_q, *vlan_info;
 u8 duplex;
 u32 speed;
 u32 tail;
 u8 idx;




 hdev->mbx_event_pending = 0;

 tail = hdev->arq.tail;


 while (tail != hdev->arq.head) {
  if (test_bit(HCLGEVF_STATE_CMD_DISABLE, &hdev->state)) {
   dev_info(&hdev->pdev->dev,
     "vf crq need init in async\n");
   return;
  }

  msg_q = hdev->arq.msg_q[hdev->arq.head];

  switch (msg_q[0]) {
  case 130:
   link_status = msg_q[1];
   memcpy(&speed, &msg_q[2], sizeof(speed));
   duplex = (u8)msg_q[4];


   hclgevf_update_link_status(hdev, link_status);
   hclgevf_update_speed_duplex(hdev, speed, duplex);

   break;
  case 129:
   idx = (u8)msg_q[1];
   if (idx)
    memcpy(&hdev->hw.mac.supported, &msg_q[2],
           sizeof(unsigned long));
   else
    memcpy(&hdev->hw.mac.advertising, &msg_q[2],
           sizeof(unsigned long));
   break;
  case 131:





   reset_type = (enum hnae3_reset_type)msg_q[1];
   set_bit(reset_type, &hdev->reset_pending);
   set_bit(HCLGEVF_RESET_PENDING, &hdev->reset_state);
   hclgevf_reset_task_schedule(hdev);

   break;
  case 128:
   state = msg_q[1];
   vlan_info = &msg_q[1];
   hclgevf_update_port_base_vlan_info(hdev, state,
          (u8 *)vlan_info, 8);
   break;
  default:
   dev_err(&hdev->pdev->dev,
    "fetched unsupported(%d) message from arq\n",
    msg_q[0]);
   break;
  }

  hclge_mbx_head_ptr_move_arq(hdev->arq);
  atomic_dec(&hdev->arq.count);
  msg_q = hdev->arq.msg_q[hdev->arq.head];
 }
}
