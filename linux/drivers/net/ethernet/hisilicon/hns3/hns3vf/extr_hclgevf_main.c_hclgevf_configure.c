
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclgevf_dev {int dummy; } ;


 int hclgevf_get_pf_media_type (struct hclgevf_dev*) ;
 int hclgevf_get_port_base_vlan_filter_state (struct hclgevf_dev*) ;
 int hclgevf_get_queue_depth (struct hclgevf_dev*) ;
 int hclgevf_get_queue_info (struct hclgevf_dev*) ;
 int hclgevf_get_tc_info (struct hclgevf_dev*) ;

__attribute__((used)) static int hclgevf_configure(struct hclgevf_dev *hdev)
{
 int ret;


 ret = hclgevf_get_port_base_vlan_filter_state(hdev);
 if (ret)
  return ret;


 ret = hclgevf_get_queue_info(hdev);
 if (ret)
  return ret;


 ret = hclgevf_get_queue_depth(hdev);
 if (ret)
  return ret;

 ret = hclgevf_get_pf_media_type(hdev);
 if (ret)
  return ret;


 return hclgevf_get_tc_info(hdev);
}
