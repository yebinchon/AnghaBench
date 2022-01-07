
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_vport {int mps; int state; scalar_t__ last_active_jiffies; } ;
struct hclge_dev {int num_alloc_vport; struct hclge_vport* vport; } ;


 int HCLGE_MAC_DEFAULT_FRAME ;
 int HCLGE_VPORT_STATE_ALIVE ;
 int HZ ;
 int clear_bit (int ,int *) ;
 int jiffies ;
 int test_bit (int ,int *) ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static void hclge_update_vport_alive(struct hclge_dev *hdev)
{
 int i;


 for (i = 1; i < hdev->num_alloc_vport; i++) {
  struct hclge_vport *vport = &hdev->vport[i];

  if (time_after(jiffies, vport->last_active_jiffies + 8 * HZ))
   clear_bit(HCLGE_VPORT_STATE_ALIVE, &vport->state);


  if (!test_bit(HCLGE_VPORT_STATE_ALIVE, &vport->state))
   vport->mps = HCLGE_MAC_DEFAULT_FRAME;
 }
}
