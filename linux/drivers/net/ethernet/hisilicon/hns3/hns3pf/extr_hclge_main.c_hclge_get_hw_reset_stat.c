
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {int hw; } ;


 int HCLGE_FUN_RST_ING ;
 int HCLGE_GLOBAL_RESET_REG ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 scalar_t__ hclge_read_dev (int *,int ) ;

__attribute__((used)) static bool hclge_get_hw_reset_stat(struct hnae3_handle *handle)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;

 return hclge_read_dev(&hdev->hw, HCLGE_GLOBAL_RESET_REG) ||
        hclge_read_dev(&hdev->hw, HCLGE_FUN_RST_ING);
}
