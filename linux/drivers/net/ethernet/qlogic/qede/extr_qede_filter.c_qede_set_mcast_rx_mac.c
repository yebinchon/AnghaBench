
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qede_dev {int cdev; TYPE_3__* ops; } ;
struct TYPE_4__ {int type; int num; int * mac; } ;
struct TYPE_5__ {TYPE_1__ mcast; } ;
struct qed_filter_params {TYPE_2__ filter; int type; } ;
typedef int filter_cmd ;
typedef enum qed_filter_xcast_params_type { ____Placeholder_qed_filter_xcast_params_type } qed_filter_xcast_params_type ;
struct TYPE_6__ {int (* filter_config ) (int ,struct qed_filter_params*) ;} ;


 int ETH_ALEN ;
 int QED_FILTER_TYPE_MCAST ;
 int ether_addr_copy (int ,unsigned char*) ;
 int memset (struct qed_filter_params*,int ,int) ;
 int stub1 (int ,struct qed_filter_params*) ;

__attribute__((used)) static int qede_set_mcast_rx_mac(struct qede_dev *edev,
     enum qed_filter_xcast_params_type opcode,
     unsigned char *mac, int num_macs)
{
 struct qed_filter_params filter_cmd;
 int i;

 memset(&filter_cmd, 0, sizeof(filter_cmd));
 filter_cmd.type = QED_FILTER_TYPE_MCAST;
 filter_cmd.filter.mcast.type = opcode;
 filter_cmd.filter.mcast.num = num_macs;

 for (i = 0; i < num_macs; i++, mac += ETH_ALEN)
  ether_addr_copy(filter_cmd.filter.mcast.mac[i], mac);

 return edev->ops->filter_config(edev->cdev, &filter_cmd);
}
