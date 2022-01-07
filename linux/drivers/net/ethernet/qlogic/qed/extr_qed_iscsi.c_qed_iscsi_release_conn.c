
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_hash_iscsi_con {int con; int node; } ;
struct qed_dev {int dummy; } ;


 int DP_NOTICE (struct qed_dev*,char*,int ) ;
 int EINVAL ;
 int QED_AFFIN_HWFN (struct qed_dev*) ;
 int hlist_del (int *) ;
 int kfree (struct qed_hash_iscsi_con*) ;
 struct qed_hash_iscsi_con* qed_iscsi_get_hash (struct qed_dev*,int ) ;
 int qed_iscsi_release_connection (int ,int ) ;

__attribute__((used)) static int qed_iscsi_release_conn(struct qed_dev *cdev, u32 handle)
{
 struct qed_hash_iscsi_con *hash_con;

 hash_con = qed_iscsi_get_hash(cdev, handle);
 if (!hash_con) {
  DP_NOTICE(cdev, "Failed to find connection for handle %d\n",
     handle);
  return -EINVAL;
 }

 hlist_del(&hash_con->node);
 qed_iscsi_release_connection(QED_AFFIN_HWFN(cdev), hash_con->con);
 kfree(hash_con);

 return 0;
}
