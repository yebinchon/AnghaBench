
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ io_base; int rx_desc_num; int tx_desc_num; int buf_size; int * ae_algo; } ;
struct hclgevf_tqp {int index; TYPE_2__ q; int * dev; } ;
struct TYPE_6__ {scalar_t__ io_base; } ;
struct hclgevf_dev {int num_tqps; TYPE_3__ hw; int num_rx_desc; int num_tx_desc; int rx_buf_len; TYPE_1__* pdev; struct hclgevf_tqp* htqp; } ;
struct TYPE_4__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ HCLGEVF_TQP_REG_OFFSET ;
 int HCLGEVF_TQP_REG_SIZE ;
 int ae_algovf ;
 struct hclgevf_tqp* devm_kcalloc (int *,int,int,int ) ;

__attribute__((used)) static int hclgevf_alloc_tqps(struct hclgevf_dev *hdev)
{
 struct hclgevf_tqp *tqp;
 int i;

 hdev->htqp = devm_kcalloc(&hdev->pdev->dev, hdev->num_tqps,
      sizeof(struct hclgevf_tqp), GFP_KERNEL);
 if (!hdev->htqp)
  return -ENOMEM;

 tqp = hdev->htqp;

 for (i = 0; i < hdev->num_tqps; i++) {
  tqp->dev = &hdev->pdev->dev;
  tqp->index = i;

  tqp->q.ae_algo = &ae_algovf;
  tqp->q.buf_size = hdev->rx_buf_len;
  tqp->q.tx_desc_num = hdev->num_tx_desc;
  tqp->q.rx_desc_num = hdev->num_rx_desc;
  tqp->q.io_base = hdev->hw.io_base + HCLGEVF_TQP_REG_OFFSET +
   i * HCLGEVF_TQP_REG_SIZE;

  tqp++;
 }

 return 0;
}
