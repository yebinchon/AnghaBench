
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_hash_fcoe_con {struct qed_fcoe_conn* con; } ;
struct qed_fcoe_conn {int terminate_params; } ;
struct qed_dev {int dummy; } ;
typedef int dma_addr_t ;


 int DP_NOTICE (struct qed_dev*,char*,int ) ;
 int EINVAL ;
 int QED_AFFIN_HWFN (struct qed_dev*) ;
 int QED_SPQ_MODE_EBLOCK ;
 struct qed_hash_fcoe_con* qed_fcoe_get_hash (struct qed_dev*,int ) ;
 int qed_sp_fcoe_conn_destroy (int ,struct qed_fcoe_conn*,int ,int *) ;

__attribute__((used)) static int qed_fcoe_destroy_conn(struct qed_dev *cdev,
     u32 handle, dma_addr_t terminate_params)
{
 struct qed_hash_fcoe_con *hash_con;
 struct qed_fcoe_conn *con;

 hash_con = qed_fcoe_get_hash(cdev, handle);
 if (!hash_con) {
  DP_NOTICE(cdev, "Failed to find connection for handle %d\n",
     handle);
  return -EINVAL;
 }


 con = hash_con->con;
 con->terminate_params = terminate_params;

 return qed_sp_fcoe_conn_destroy(QED_AFFIN_HWFN(cdev), con,
     QED_SPQ_MODE_EBLOCK, ((void*)0));
}
