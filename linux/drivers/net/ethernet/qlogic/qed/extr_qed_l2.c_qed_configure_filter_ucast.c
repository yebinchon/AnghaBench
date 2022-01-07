
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucast ;
struct qed_filter_ucast_params {int type; int vlan; int mac; scalar_t__ mac_valid; scalar_t__ vlan_valid; } ;
struct qed_filter_ucast {int is_rx_filter; int is_tx_filter; int vlan; int type; int mac; int opcode; } ;
struct qed_dev {int dummy; } ;


 int DP_NOTICE (struct qed_dev*,char*,...) ;
 int EINVAL ;
 int QED_FILTER_ADD ;
 int QED_FILTER_MAC ;
 int QED_FILTER_MAC_VLAN ;
 int QED_FILTER_REMOVE ;
 int QED_FILTER_REPLACE ;
 int QED_FILTER_VLAN ;



 int QED_SPQ_MODE_CB ;
 int ether_addr_copy (int ,int ) ;
 int memset (struct qed_filter_ucast*,int ,int) ;
 int qed_filter_ucast_cmd (struct qed_dev*,struct qed_filter_ucast*,int ,int *) ;

__attribute__((used)) static int qed_configure_filter_ucast(struct qed_dev *cdev,
          struct qed_filter_ucast_params *params)
{
 struct qed_filter_ucast ucast;

 if (!params->vlan_valid && !params->mac_valid) {
  DP_NOTICE(cdev,
     "Tried configuring a unicast filter, but both MAC and VLAN are not set\n");
  return -EINVAL;
 }

 memset(&ucast, 0, sizeof(ucast));
 switch (params->type) {
 case 130:
  ucast.opcode = QED_FILTER_ADD;
  break;
 case 129:
  ucast.opcode = QED_FILTER_REMOVE;
  break;
 case 128:
  ucast.opcode = QED_FILTER_REPLACE;
  break;
 default:
  DP_NOTICE(cdev, "Unknown unicast filter type %d\n",
     params->type);
 }

 if (params->vlan_valid && params->mac_valid) {
  ucast.type = QED_FILTER_MAC_VLAN;
  ether_addr_copy(ucast.mac, params->mac);
  ucast.vlan = params->vlan;
 } else if (params->mac_valid) {
  ucast.type = QED_FILTER_MAC;
  ether_addr_copy(ucast.mac, params->mac);
 } else {
  ucast.type = QED_FILTER_VLAN;
  ucast.vlan = params->vlan;
 }

 ucast.is_rx_filter = 1;
 ucast.is_tx_filter = 1;

 return qed_filter_ucast_cmd(cdev, &ucast, QED_SPQ_MODE_CB, ((void*)0));
}
