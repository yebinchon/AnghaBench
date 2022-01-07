
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hclgevf_cmq_ring {int flag; struct hclgevf_dev* dev; } ;
struct TYPE_4__ {struct hclgevf_cmq_ring crq; struct hclgevf_cmq_ring csq; } ;
struct hclgevf_hw {TYPE_2__ cmq; } ;
struct hclgevf_dev {TYPE_1__* pdev; struct hclgevf_hw hw; } ;
struct TYPE_3__ {int dev; } ;


 int HCLGEVF_TYPE_CSQ ;
 int dev_err (int *,char*,int,char*) ;
 int hclgevf_alloc_cmd_desc (struct hclgevf_cmq_ring*) ;

__attribute__((used)) static int hclgevf_alloc_cmd_queue(struct hclgevf_dev *hdev, int ring_type)
{
 struct hclgevf_hw *hw = &hdev->hw;
 struct hclgevf_cmq_ring *ring =
  (ring_type == HCLGEVF_TYPE_CSQ) ? &hw->cmq.csq : &hw->cmq.crq;
 int ret;

 ring->dev = hdev;
 ring->flag = ring_type;


 ret = hclgevf_alloc_cmd_desc(ring);
 if (ret)
  dev_err(&hdev->pdev->dev, "failed(%d) to alloc %s desc\n", ret,
   (ring_type == HCLGEVF_TYPE_CSQ) ? "CSQ" : "CRQ");

 return ret;
}
