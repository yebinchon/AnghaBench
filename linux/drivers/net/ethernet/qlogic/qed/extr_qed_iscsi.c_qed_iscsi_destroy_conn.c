
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct qed_hash_iscsi_con {TYPE_1__* con; } ;
struct qed_dev {int dummy; } ;
struct TYPE_2__ {int abortive_dsconnect; } ;


 int DP_NOTICE (struct qed_dev*,char*,int ) ;
 int EINVAL ;
 int QED_AFFIN_HWFN (struct qed_dev*) ;
 int QED_SPQ_MODE_EBLOCK ;
 struct qed_hash_iscsi_con* qed_iscsi_get_hash (struct qed_dev*,int ) ;
 int qed_sp_iscsi_conn_terminate (int ,TYPE_1__*,int ,int *) ;

__attribute__((used)) static int qed_iscsi_destroy_conn(struct qed_dev *cdev,
      u32 handle, u8 abrt_conn)
{
 struct qed_hash_iscsi_con *hash_con;

 hash_con = qed_iscsi_get_hash(cdev, handle);
 if (!hash_con) {
  DP_NOTICE(cdev, "Failed to find connection for handle %d\n",
     handle);
  return -EINVAL;
 }

 hash_con->con->abortive_dsconnect = abrt_conn;

 return qed_sp_iscsi_conn_terminate(QED_AFFIN_HWFN(cdev), hash_con->con,
        QED_SPQ_MODE_EBLOCK, ((void*)0));
}
