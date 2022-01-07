
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u16 ;
struct hnae3_queue {int dummy; } ;
struct hnae3_knic_private_info {int tqp; int rx_buf_len; void* num_rx_desc; void* num_tx_desc; } ;
struct hnae3_handle {struct hnae3_knic_private_info kinfo; } ;
struct hclge_vport {struct hclge_dev* back; struct hnae3_handle nic; } ;
struct hclge_dev {TYPE_1__* pdev; int rx_buf_len; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*,int) ;
 int devm_kcalloc (int *,void*,int,int ) ;
 int hclge_assign_tqp (struct hclge_vport*,void*) ;

__attribute__((used)) static int hclge_knic_setup(struct hclge_vport *vport, u16 num_tqps,
       u16 num_tx_desc, u16 num_rx_desc)

{
 struct hnae3_handle *nic = &vport->nic;
 struct hnae3_knic_private_info *kinfo = &nic->kinfo;
 struct hclge_dev *hdev = vport->back;
 int ret;

 kinfo->num_tx_desc = num_tx_desc;
 kinfo->num_rx_desc = num_rx_desc;

 kinfo->rx_buf_len = hdev->rx_buf_len;

 kinfo->tqp = devm_kcalloc(&hdev->pdev->dev, num_tqps,
      sizeof(struct hnae3_queue *), GFP_KERNEL);
 if (!kinfo->tqp)
  return -ENOMEM;

 ret = hclge_assign_tqp(vport, num_tqps);
 if (ret)
  dev_err(&hdev->pdev->dev, "fail to assign TQPs %d.\n", ret);

 return ret;
}
