
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_tqps; } ;
struct hnae3_handle {TYPE_1__ kinfo; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {scalar_t__ reset_type; int state; } ;


 int HCLGE_STATE_DOWN ;
 int HCLGE_STATE_RST_HANDLING ;
 scalar_t__ HNAE3_FUNC_RESET ;
 int hclge_cfg_mac_mode (struct hclge_dev*,int) ;
 int hclge_clear_arfs_rules (struct hnae3_handle*) ;
 int hclge_config_mac_tnl_int (struct hclge_dev*,int) ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int hclge_mac_stop_phy (struct hclge_dev*) ;
 int hclge_reset_tqp (struct hnae3_handle*,int) ;
 int hclge_reset_tqp_stats (struct hnae3_handle*) ;
 int hclge_update_link_status (struct hclge_dev*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void hclge_ae_stop(struct hnae3_handle *handle)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;
 int i;

 set_bit(HCLGE_STATE_DOWN, &hdev->state);

 hclge_clear_arfs_rules(handle);




 if (test_bit(HCLGE_STATE_RST_HANDLING, &hdev->state) &&
     hdev->reset_type != HNAE3_FUNC_RESET) {
  hclge_mac_stop_phy(hdev);
  hclge_update_link_status(hdev);
  return;
 }

 for (i = 0; i < handle->kinfo.num_tqps; i++)
  hclge_reset_tqp(handle, i);

 hclge_config_mac_tnl_int(hdev, 0);


 hclge_cfg_mac_mode(hdev, 0);

 hclge_mac_stop_phy(hdev);


 hclge_reset_tqp_stats(handle);
 hclge_update_link_status(hdev);
}
