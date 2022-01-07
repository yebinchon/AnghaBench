
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_pkt_buf_alloc {int dummy; } ;
struct hclge_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int) ;
 int hclge_cmd_alloc_tx_buff (struct hclge_dev*,struct hclge_pkt_buf_alloc*) ;

__attribute__((used)) static int hclge_tx_buffer_alloc(struct hclge_dev *hdev,
     struct hclge_pkt_buf_alloc *buf_alloc)
{
 int ret = hclge_cmd_alloc_tx_buff(hdev, buf_alloc);

 if (ret)
  dev_err(&hdev->pdev->dev, "tx buffer alloc failed %d\n", ret);

 return ret;
}
