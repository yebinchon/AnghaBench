
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int num_cons; int num_vf_cons; int num_arfs_filters; } ;
struct qed_pf_params {TYPE_1__ eth_pf_params; } ;
struct qed_dev {int dummy; } ;
struct TYPE_6__ {TYPE_2__* common; } ;
struct TYPE_5__ {int (* update_pf_params ) (struct qed_dev*,struct qed_pf_params*) ;} ;


 int MAX_SB_PER_PF_MIMD ;
 int QEDE_RFS_MAX_FLTR ;
 int QED_MIN_L2_CONS ;
 int memset (struct qed_pf_params*,int ,int) ;
 TYPE_3__* qed_ops ;
 int stub1 (struct qed_dev*,struct qed_pf_params*) ;

__attribute__((used)) static void qede_update_pf_params(struct qed_dev *cdev)
{
 struct qed_pf_params pf_params;
 u16 num_cons;


 memset(&pf_params, 0, sizeof(struct qed_pf_params));


 num_cons = QED_MIN_L2_CONS;

 pf_params.eth_pf_params.num_cons = (MAX_SB_PER_PF_MIMD - 1) * num_cons;




 pf_params.eth_pf_params.num_vf_cons = 48;

 pf_params.eth_pf_params.num_arfs_filters = QEDE_RFS_MAX_FLTR;
 qed_ops->common->update_pf_params(cdev, &pf_params);
}
