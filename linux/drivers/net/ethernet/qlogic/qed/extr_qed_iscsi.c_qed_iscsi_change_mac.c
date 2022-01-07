
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qed_hash_iscsi_con {int con; } ;
struct qed_dev {int dummy; } ;


 int DP_NOTICE (struct qed_dev*,char*,int ) ;
 int EINVAL ;
 int QED_AFFIN_HWFN (struct qed_dev*) ;
 int QED_SPQ_MODE_EBLOCK ;
 struct qed_hash_iscsi_con* qed_iscsi_get_hash (struct qed_dev*,int ) ;
 int qed_sp_iscsi_mac_update (int ,int ,int ,int *) ;

__attribute__((used)) static int qed_iscsi_change_mac(struct qed_dev *cdev,
    u32 handle, const u8 *mac)
{
 struct qed_hash_iscsi_con *hash_con;

 hash_con = qed_iscsi_get_hash(cdev, handle);
 if (!hash_con) {
  DP_NOTICE(cdev, "Failed to find connection for handle %d\n",
     handle);
  return -EINVAL;
 }

 return qed_sp_iscsi_mac_update(QED_AFFIN_HWFN(cdev), hash_con->con,
           QED_SPQ_MODE_EBLOCK, ((void*)0));
}
