
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_filter_mcast_params {int type; int num; int * mac; } ;
struct qed_filter_mcast {int num_mc_addrs; int * mac; int opcode; } ;
struct qed_dev {int dummy; } ;
typedef int mcast ;


 int DP_NOTICE (struct qed_dev*,char*,int) ;
 int QED_FILTER_ADD ;
 int QED_FILTER_REMOVE ;


 int QED_SPQ_MODE_CB ;
 int ether_addr_copy (int ,int ) ;
 int memset (struct qed_filter_mcast*,int ,int) ;
 int qed_filter_mcast_cmd (struct qed_dev*,struct qed_filter_mcast*,int ,int *) ;

__attribute__((used)) static int qed_configure_filter_mcast(struct qed_dev *cdev,
          struct qed_filter_mcast_params *params)
{
 struct qed_filter_mcast mcast;
 int i;

 memset(&mcast, 0, sizeof(mcast));
 switch (params->type) {
 case 129:
  mcast.opcode = QED_FILTER_ADD;
  break;
 case 128:
  mcast.opcode = QED_FILTER_REMOVE;
  break;
 default:
  DP_NOTICE(cdev, "Unknown multicast filter type %d\n",
     params->type);
 }

 mcast.num_mc_addrs = params->num;
 for (i = 0; i < mcast.num_mc_addrs; i++)
  ether_addr_copy(mcast.mac[i], params->mac[i]);

 return qed_filter_mcast_cmd(cdev, &mcast, QED_SPQ_MODE_CB, ((void*)0));
}
