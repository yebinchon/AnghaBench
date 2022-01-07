
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_ets {int dummy; } ;
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {int dummy; } ;


 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int hclge_tm_info_to_ieee_ets (struct hclge_dev*,struct ieee_ets*) ;

__attribute__((used)) static int hclge_ieee_getets(struct hnae3_handle *h, struct ieee_ets *ets)
{
 struct hclge_vport *vport = hclge_get_vport(h);
 struct hclge_dev *hdev = vport->back;

 hclge_tm_info_to_ieee_ets(hdev, ets);

 return 0;
}
