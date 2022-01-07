
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct qed_hwfn {TYPE_3__* cdev; } ;
struct qed_dbg_feature {char* dump_buf; int dumped_dwords; int buf_size; } ;
typedef enum qed_dbg_features { ____Placeholder_qed_dbg_features } qed_dbg_features ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;
struct TYPE_4__ {scalar_t__ print_data; struct qed_dbg_feature* features; } ;
struct TYPE_6__ {TYPE_1__ dbg_params; } ;
struct TYPE_5__ {int (* results_buf_size ) (struct qed_hwfn*,int*,int,int*) ;int (* print_results ) (struct qed_hwfn*,int*,int,char*) ;} ;


 int DBG_STATUS_INVALID_ARGS ;
 int DBG_STATUS_OK ;
 int DBG_STATUS_VIRT_MEM_ALLOC_FAILED ;
 int DP_NOTICE (TYPE_3__*,char*,int) ;
 int QED_RESULTS_BUF_MIN_SIZE ;
 int qed_dbg_print_feature (char*,int) ;
 TYPE_2__* qed_features_lookup ;
 int stub1 (struct qed_hwfn*,int*,int,int*) ;
 int stub2 (struct qed_hwfn*,int*,int,char*) ;
 int vfree (char*) ;
 char* vzalloc (int) ;

__attribute__((used)) static enum dbg_status format_feature(struct qed_hwfn *p_hwfn,
          enum qed_dbg_features feature_idx)
{
 struct qed_dbg_feature *feature =
     &p_hwfn->cdev->dbg_params.features[feature_idx];
 u32 text_size_bytes, null_char_pos, i;
 enum dbg_status rc;
 char *text_buf;


 if (!qed_features_lookup[feature_idx].results_buf_size)
  return DBG_STATUS_OK;


 rc = qed_features_lookup[feature_idx].
  results_buf_size(p_hwfn, (u32 *)feature->dump_buf,
     feature->dumped_dwords, &text_size_bytes);
 if (rc != DBG_STATUS_OK)
  return rc;


 null_char_pos = text_size_bytes - 1;
 text_size_bytes = (text_size_bytes + 3) & ~0x3;

 if (text_size_bytes < QED_RESULTS_BUF_MIN_SIZE) {
  DP_NOTICE(p_hwfn->cdev,
     "formatted size of feature was too small %d. Aborting\n",
     text_size_bytes);
  return DBG_STATUS_INVALID_ARGS;
 }


 text_buf = vzalloc(text_size_bytes);
 if (!text_buf)
  return DBG_STATUS_VIRT_MEM_ALLOC_FAILED;


 rc = qed_features_lookup[feature_idx].
  print_results(p_hwfn, (u32 *)feature->dump_buf,
         feature->dumped_dwords, text_buf);
 if (rc != DBG_STATUS_OK) {
  vfree(text_buf);
  return rc;
 }





 for (i = null_char_pos; i < text_size_bytes; i++)
  text_buf[i] = '\n';


 if (p_hwfn->cdev->dbg_params.print_data)
  qed_dbg_print_feature(text_buf, text_size_bytes);




 vfree(feature->dump_buf);
 feature->dump_buf = text_buf;
 feature->buf_size = text_size_bytes;
 feature->dumped_dwords = text_size_bytes / 4;
 return rc;
}
