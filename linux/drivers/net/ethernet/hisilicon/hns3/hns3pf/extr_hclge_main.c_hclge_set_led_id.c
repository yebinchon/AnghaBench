
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {int dummy; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;


 int EINVAL ;


 int HCLGE_LED_OFF ;
 int HCLGE_LED_ON ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int hclge_set_led_status (struct hclge_dev*,int ) ;

__attribute__((used)) static int hclge_set_led_id(struct hnae3_handle *handle,
       enum ethtool_phys_id_state status)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;

 switch (status) {
 case 129:
  return hclge_set_led_status(hdev, HCLGE_LED_ON);
 case 128:
  return hclge_set_led_status(hdev, HCLGE_LED_OFF);
 default:
  return -EINVAL;
 }
}
