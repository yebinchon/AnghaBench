
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct qede_dev {int cdev; TYPE_1__* ops; } ;
struct TYPE_5__ {int type; int vlan_valid; int vlan; } ;
struct TYPE_6__ {TYPE_2__ ucast; } ;
struct qed_filter_params {TYPE_3__ filter; int type; } ;
typedef int filter_cmd ;
typedef enum qed_filter_xcast_params_type { ____Placeholder_qed_filter_xcast_params_type } qed_filter_xcast_params_type ;
struct TYPE_4__ {int (* filter_config ) (int ,struct qed_filter_params*) ;} ;


 int QED_FILTER_TYPE_UCAST ;
 int memset (struct qed_filter_params*,int ,int) ;
 int stub1 (int ,struct qed_filter_params*) ;

__attribute__((used)) static int qede_set_ucast_rx_vlan(struct qede_dev *edev,
      enum qed_filter_xcast_params_type opcode,
      u16 vid)
{
 struct qed_filter_params filter_cmd;

 memset(&filter_cmd, 0, sizeof(filter_cmd));
 filter_cmd.type = QED_FILTER_TYPE_UCAST;
 filter_cmd.filter.ucast.type = opcode;
 filter_cmd.filter.ucast.vlan_valid = 1;
 filter_cmd.filter.ucast.vlan = vid;

 return edev->ops->filter_config(edev->cdev, &filter_cmd);
}
