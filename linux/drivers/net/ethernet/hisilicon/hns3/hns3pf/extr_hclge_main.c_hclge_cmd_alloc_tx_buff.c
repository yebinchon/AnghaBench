
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct hclge_tx_buff_alloc_cmd {int * tx_pkt_buff; } ;
struct hclge_pkt_buf_alloc {TYPE_1__* priv_buf; } ;
struct hclge_dev {TYPE_2__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int tx_buf_size; } ;


 int HCLGE_BUF_SIZE_UNIT_SHIFT ;
 int HCLGE_BUF_SIZE_UPDATE_EN_MSK ;
 size_t HCLGE_MAX_TC_NUM ;
 int HCLGE_OPC_TX_BUFF_ALLOC ;
 int cpu_to_le16 (int) ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int ) ;

__attribute__((used)) static int hclge_cmd_alloc_tx_buff(struct hclge_dev *hdev,
        struct hclge_pkt_buf_alloc *buf_alloc)
{



 struct hclge_tx_buff_alloc_cmd *req;
 struct hclge_desc desc;
 int ret;
 u8 i;

 req = (struct hclge_tx_buff_alloc_cmd *)desc.data;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_TX_BUFF_ALLOC, 0);
 for (i = 0; i < HCLGE_MAX_TC_NUM; i++) {
  u32 buf_size = buf_alloc->priv_buf[i].tx_buf_size;

  req->tx_pkt_buff[i] =
   cpu_to_le16((buf_size >> 7) |
         BIT(15));
 }

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  dev_err(&hdev->pdev->dev, "tx buffer alloc cmd failed %d.\n",
   ret);

 return ret;
}
