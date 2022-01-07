
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {TYPE_3__* cdev; } ;
struct qed_dbg_feature {int buf_size; int dumped_dwords; int * dump_buf; } ;
typedef enum qed_dbg_features { ____Placeholder_qed_dbg_features } qed_dbg_features ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;
struct TYPE_4__ {struct qed_dbg_feature* features; } ;
struct TYPE_6__ {TYPE_1__ dbg_params; } ;
struct TYPE_5__ {int (* get_size ) (struct qed_hwfn*,struct qed_ptt*,int*) ;int (* perform_dump ) (struct qed_hwfn*,struct qed_ptt*,int*,int,int *) ;int name; } ;


 int DBG_STATUS_NVRAM_GET_IMAGE_FAILED ;
 int DBG_STATUS_OK ;
 int DBG_STATUS_VIRT_MEM_ALLOC_FAILED ;
 int DP_NOTICE (TYPE_3__*,char*,int ) ;
 int format_feature (struct qed_hwfn*,int) ;
 TYPE_2__* qed_features_lookup ;
 int stub1 (struct qed_hwfn*,struct qed_ptt*,int*) ;
 int stub2 (struct qed_hwfn*,struct qed_ptt*,int*,int,int *) ;
 int vfree (int *) ;
 int * vmalloc (int) ;

__attribute__((used)) static enum dbg_status qed_dbg_dump(struct qed_hwfn *p_hwfn,
        struct qed_ptt *p_ptt,
        enum qed_dbg_features feature_idx)
{
 struct qed_dbg_feature *feature =
     &p_hwfn->cdev->dbg_params.features[feature_idx];
 u32 buf_size_dwords;
 enum dbg_status rc;

 DP_NOTICE(p_hwfn->cdev, "Collecting a debug feature [\"%s\"]\n",
    qed_features_lookup[feature_idx].name);





 if (feature->dump_buf) {
  vfree(feature->dump_buf);
  feature->dump_buf = ((void*)0);
 }




 rc = qed_features_lookup[feature_idx].get_size(p_hwfn, p_ptt,
             &buf_size_dwords);
 if (rc != DBG_STATUS_OK && rc != DBG_STATUS_NVRAM_GET_IMAGE_FAILED)
  return rc;
 feature->buf_size = buf_size_dwords * sizeof(u32);
 feature->dump_buf = vmalloc(feature->buf_size);
 if (!feature->dump_buf)
  return DBG_STATUS_VIRT_MEM_ALLOC_FAILED;

 rc = qed_features_lookup[feature_idx].
  perform_dump(p_hwfn, p_ptt, (u32 *)feature->dump_buf,
        feature->buf_size / sizeof(u32),
        &feature->dumped_dwords);







 if (rc == DBG_STATUS_NVRAM_GET_IMAGE_FAILED)
  return DBG_STATUS_OK;

 if (rc != DBG_STATUS_OK)
  return rc;


 rc = format_feature(p_hwfn, feature_idx);
 return rc;
}
