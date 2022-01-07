
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {int dummy; } ;


 int hclge_config_gro (struct hclge_dev*,int) ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;

__attribute__((used)) static int hclge_gro_en(struct hnae3_handle *handle, bool enable)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;

 return hclge_config_gro(hdev, enable);
}
