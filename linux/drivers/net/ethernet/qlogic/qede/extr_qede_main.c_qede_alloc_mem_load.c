
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_fastpath {int dummy; } ;
struct qede_dev {struct qede_fastpath* fp_array; } ;


 int DP_ERR (struct qede_dev*,char*,int) ;
 int QEDE_QUEUE_CNT (struct qede_dev*) ;
 int qede_alloc_mem_fp (struct qede_dev*,struct qede_fastpath*) ;
 int qede_free_mem_load (struct qede_dev*) ;

__attribute__((used)) static int qede_alloc_mem_load(struct qede_dev *edev)
{
 int rc = 0, queue_id;

 for (queue_id = 0; queue_id < QEDE_QUEUE_CNT(edev); queue_id++) {
  struct qede_fastpath *fp = &edev->fp_array[queue_id];

  rc = qede_alloc_mem_fp(edev, fp);
  if (rc) {
   DP_ERR(edev,
          "Failed to allocate memory for fastpath - rss id = %d\n",
          queue_id);
   qede_free_mem_load(edev);
   return rc;
  }
 }

 return 0;
}
