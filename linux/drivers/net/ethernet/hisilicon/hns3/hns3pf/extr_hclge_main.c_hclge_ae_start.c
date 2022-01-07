
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct TYPE_3__ {scalar_t__ link; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_2__ hw; int state; } ;


 int HCLGE_STATE_DOWN ;
 int clear_bit (int ,int *) ;
 int hclge_cfg_mac_mode (struct hclge_dev*,int) ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int hclge_mac_start_phy (struct hclge_dev*) ;
 int hclge_reset_tqp_stats (struct hnae3_handle*) ;

__attribute__((used)) static int hclge_ae_start(struct hnae3_handle *handle)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;


 hclge_cfg_mac_mode(hdev, 1);
 clear_bit(HCLGE_STATE_DOWN, &hdev->state);
 hdev->hw.mac.link = 0;


 hclge_reset_tqp_stats(handle);

 hclge_mac_start_phy(hdev);

 return 0;
}
