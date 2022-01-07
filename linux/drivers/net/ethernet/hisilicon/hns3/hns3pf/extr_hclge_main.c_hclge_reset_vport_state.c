
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_vport {int dummy; } ;
struct hclge_dev {int num_alloc_vport; struct hclge_vport* vport; } ;


 int hclge_vport_stop (struct hclge_vport*) ;

__attribute__((used)) static void hclge_reset_vport_state(struct hclge_dev *hdev)
{
 struct hclge_vport *vport = hdev->vport;
 int i;

 for (i = 0; i < hdev->num_alloc_vport; i++) {
  hclge_vport_stop(vport);
  vport++;
 }
}
