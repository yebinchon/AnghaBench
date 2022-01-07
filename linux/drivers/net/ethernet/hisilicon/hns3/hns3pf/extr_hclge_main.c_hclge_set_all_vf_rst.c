
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_vport {int vport_id; int state; } ;
struct hclge_dev {int num_vmdq_vport; int num_alloc_vport; TYPE_1__* pdev; struct hclge_vport* vport; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_VPORT_STATE_ALIVE ;
 int dev_err (int *,char*,int ,int) ;
 int dev_warn (int *,char*,int ,int) ;
 int hclge_inform_reset_assert_to_vf (struct hclge_vport*) ;
 int hclge_set_vf_rst (struct hclge_dev*,int ,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int hclge_set_all_vf_rst(struct hclge_dev *hdev, bool reset)
{
 int i;

 for (i = hdev->num_vmdq_vport + 1; i < hdev->num_alloc_vport; i++) {
  struct hclge_vport *vport = &hdev->vport[i];
  int ret;


  ret = hclge_set_vf_rst(hdev, vport->vport_id, reset);
  if (ret) {
   dev_err(&hdev->pdev->dev,
    "set vf(%d) rst failed %d!\n",
    vport->vport_id, ret);
   return ret;
  }

  if (!reset || !test_bit(HCLGE_VPORT_STATE_ALIVE, &vport->state))
   continue;





  ret = hclge_inform_reset_assert_to_vf(vport);
  if (ret)
   dev_warn(&hdev->pdev->dev,
     "inform reset to vf(%d) failed %d!\n",
     vport->vport_id, ret);
 }

 return 0;
}
