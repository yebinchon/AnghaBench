
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hclge_cmq_ring {int ring_type; struct hclge_dev* dev; } ;
struct TYPE_4__ {struct hclge_cmq_ring crq; struct hclge_cmq_ring csq; } ;
struct hclge_hw {TYPE_2__ cmq; } ;
struct hclge_dev {TYPE_1__* pdev; struct hclge_hw hw; } ;
struct TYPE_3__ {int dev; } ;


 int HCLGE_TYPE_CSQ ;
 int dev_err (int *,char*,char*,int) ;
 int hclge_alloc_cmd_desc (struct hclge_cmq_ring*) ;

__attribute__((used)) static int hclge_alloc_cmd_queue(struct hclge_dev *hdev, int ring_type)
{
 struct hclge_hw *hw = &hdev->hw;
 struct hclge_cmq_ring *ring =
  (ring_type == HCLGE_TYPE_CSQ) ? &hw->cmq.csq : &hw->cmq.crq;
 int ret;

 ring->ring_type = ring_type;
 ring->dev = hdev;

 ret = hclge_alloc_cmd_desc(ring);
 if (ret) {
  dev_err(&hdev->pdev->dev, "descriptor %s alloc error %d\n",
   (ring_type == HCLGE_TYPE_CSQ) ? "CSQ" : "CRQ", ret);
  return ret;
 }

 return 0;
}
