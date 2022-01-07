
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qed_queue_cid {struct qed_hwfn* p_owner; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {int dummy; } ;


 int DP_VERBOSE (struct qed_dev*,int ,char*) ;
 int QED_MSG_DEBUG ;
 int qed_get_queue_coalesce (struct qed_hwfn*,int *,void*) ;

__attribute__((used)) static int qed_get_coalesce(struct qed_dev *cdev, u16 *coal, void *handle)
{
 struct qed_queue_cid *p_cid = handle;
 struct qed_hwfn *p_hwfn;
 int rc;

 p_hwfn = p_cid->p_owner;
 rc = qed_get_queue_coalesce(p_hwfn, coal, handle);
 if (rc)
  DP_VERBOSE(cdev, QED_MSG_DEBUG,
      "Unable to read queue coalescing\n");

 return rc;
}
