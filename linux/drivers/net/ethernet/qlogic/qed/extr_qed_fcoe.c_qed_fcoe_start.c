
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_tid_mem {int blocks; int num_tids_per_block; int tid_size; } ;
struct qed_fcoe_tid {int blocks; int num_tids_per_block; int size; } ;
struct qed_dev {int flags; int connections; } ;


 int DP_NOTICE (struct qed_dev*,char*) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int MAX_TID_BLOCKS_FCOE ;
 int QED_AFFIN_HWFN (struct qed_dev*) ;
 int QED_FLAG_STORAGE_STARTED ;
 int QED_SPQ_MODE_EBLOCK ;
 int hash_init (int ) ;
 int kfree (struct qed_tid_mem*) ;
 struct qed_tid_mem* kzalloc (int,int ) ;
 int memcpy (int ,int ,int) ;
 int qed_cxt_get_tid_mem_info (int ,struct qed_tid_mem*) ;
 int qed_fcoe_stop (struct qed_dev*) ;
 int qed_sp_fcoe_func_start (int ,int ,int *) ;

__attribute__((used)) static int qed_fcoe_start(struct qed_dev *cdev, struct qed_fcoe_tid *tasks)
{
 int rc;

 if (cdev->flags & QED_FLAG_STORAGE_STARTED) {
  DP_NOTICE(cdev, "fcoe already started;\n");
  return 0;
 }

 rc = qed_sp_fcoe_func_start(QED_AFFIN_HWFN(cdev), QED_SPQ_MODE_EBLOCK,
        ((void*)0));
 if (rc) {
  DP_NOTICE(cdev, "Failed to start fcoe\n");
  return rc;
 }

 cdev->flags |= QED_FLAG_STORAGE_STARTED;
 hash_init(cdev->connections);

 if (tasks) {
  struct qed_tid_mem *tid_info = kzalloc(sizeof(*tid_info),
             GFP_ATOMIC);

  if (!tid_info) {
   DP_NOTICE(cdev,
      "Failed to allocate tasks information\n");
   qed_fcoe_stop(cdev);
   return -ENOMEM;
  }

  rc = qed_cxt_get_tid_mem_info(QED_AFFIN_HWFN(cdev), tid_info);
  if (rc) {
   DP_NOTICE(cdev, "Failed to gather task information\n");
   qed_fcoe_stop(cdev);
   kfree(tid_info);
   return rc;
  }


  tasks->size = tid_info->tid_size;
  tasks->num_tids_per_block = tid_info->num_tids_per_block;
  memcpy(tasks->blocks, tid_info->blocks,
         MAX_TID_BLOCKS_FCOE * sizeof(u8 *));

  kfree(tid_info);
 }

 return 0;
}
