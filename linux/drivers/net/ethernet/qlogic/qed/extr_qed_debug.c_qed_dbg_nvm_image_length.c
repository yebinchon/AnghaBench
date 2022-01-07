
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_nvm_image_att {int length; } ;
struct qed_hwfn {int dummy; } ;
typedef enum qed_nvm_images { ____Placeholder_qed_nvm_images } qed_nvm_images ;


 int qed_mcp_get_nvm_image_att (struct qed_hwfn*,int,struct qed_nvm_image_att*) ;

__attribute__((used)) static int qed_dbg_nvm_image_length(struct qed_hwfn *p_hwfn,
        enum qed_nvm_images image_id, u32 *length)
{
 struct qed_nvm_image_att image_att;
 int rc;

 *length = 0;
 rc = qed_mcp_get_nvm_image_att(p_hwfn, image_id, &image_att);
 if (rc)
  return rc;

 *length = image_att.length;

 return rc;
}
