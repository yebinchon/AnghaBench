
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {int flag; int dcbx_cap; } ;


 int HCLGE_FLAG_MQPRIO_ENABLE ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;

__attribute__((used)) static u8 hclge_getdcbx(struct hnae3_handle *h)
{
 struct hclge_vport *vport = hclge_get_vport(h);
 struct hclge_dev *hdev = vport->back;

 if (hdev->flag & HCLGE_FLAG_MQPRIO_ENABLE)
  return 0;

 return hdev->dcbx_cap;
}
