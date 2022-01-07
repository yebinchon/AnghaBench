
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct hclge_vport {int vport_id; } ;
struct hclge_dev {size_t num_alloc_vport; TYPE_1__* pdev; struct hclge_vport* vport; } ;
struct TYPE_2__ {int dev; } ;


 int dev_warn (int *,char*,int ,int) ;
 int hclge_set_vf_rst (struct hclge_dev*,int ,int) ;

__attribute__((used)) static void hclge_clear_resetting_state(struct hclge_dev *hdev)
{
 u16 i;

 for (i = 0; i < hdev->num_alloc_vport; i++) {
  struct hclge_vport *vport = &hdev->vport[i];
  int ret;


  ret = hclge_set_vf_rst(hdev, vport->vport_id, 0);
  if (ret)
   dev_warn(&hdev->pdev->dev,
     "clear vf(%d) rst failed %d!\n",
     vport->vport_id, ret);
 }
}
