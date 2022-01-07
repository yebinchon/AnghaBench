
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {int state; } ;


 int HCLGE_STATE_RST_HANDLING ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool hclge_ae_dev_resetting(struct hnae3_handle *handle)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;

 return test_bit(HCLGE_STATE_RST_HANDLING, &hdev->state);
}
