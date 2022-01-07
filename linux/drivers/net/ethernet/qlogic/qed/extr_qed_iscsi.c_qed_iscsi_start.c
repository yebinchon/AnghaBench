
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_tid_mem {int blocks; int num_tids_per_block; int tid_size; } ;
struct qed_iscsi_tid {int blocks; int num_tids_per_block; int size; } ;
struct qed_dev {int flags; int connections; } ;
typedef int iscsi_event_cb_t ;


 int DP_NOTICE (struct qed_dev*,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_TID_BLOCKS_ISCSI ;
 int QED_AFFIN_HWFN (struct qed_dev*) ;
 int QED_FLAG_STORAGE_STARTED ;
 int QED_SPQ_MODE_EBLOCK ;
 int hash_init (int ) ;
 int kfree (struct qed_tid_mem*) ;
 struct qed_tid_mem* kzalloc (int,int ) ;
 int memcpy (int ,int ,int) ;
 int qed_cxt_get_tid_mem_info (int ,struct qed_tid_mem*) ;
 int qed_iscsi_stop (struct qed_dev*) ;
 int qed_sp_iscsi_func_start (int ,int ,int *,void*,int ) ;

__attribute__((used)) static int qed_iscsi_start(struct qed_dev *cdev,
      struct qed_iscsi_tid *tasks,
      void *event_context,
      iscsi_event_cb_t async_event_cb)
{
 int rc;
 struct qed_tid_mem *tid_info;

 if (cdev->flags & QED_FLAG_STORAGE_STARTED) {
  DP_NOTICE(cdev, "iscsi already started;\n");
  return 0;
 }

 rc = qed_sp_iscsi_func_start(QED_AFFIN_HWFN(cdev), QED_SPQ_MODE_EBLOCK,
         ((void*)0), event_context, async_event_cb);
 if (rc) {
  DP_NOTICE(cdev, "Failed to start iscsi\n");
  return rc;
 }

 cdev->flags |= QED_FLAG_STORAGE_STARTED;
 hash_init(cdev->connections);

 if (!tasks)
  return 0;

 tid_info = kzalloc(sizeof(*tid_info), GFP_KERNEL);

 if (!tid_info) {
  qed_iscsi_stop(cdev);
  return -ENOMEM;
 }

 rc = qed_cxt_get_tid_mem_info(QED_AFFIN_HWFN(cdev), tid_info);
 if (rc) {
  DP_NOTICE(cdev, "Failed to gather task information\n");
  qed_iscsi_stop(cdev);
  kfree(tid_info);
  return rc;
 }


 tasks->size = tid_info->tid_size;
 tasks->num_tids_per_block = tid_info->num_tids_per_block;
 memcpy(tasks->blocks, tid_info->blocks,
        MAX_TID_BLOCKS_ISCSI * sizeof(u8 *));

 kfree(tid_info);

 return 0;
}
