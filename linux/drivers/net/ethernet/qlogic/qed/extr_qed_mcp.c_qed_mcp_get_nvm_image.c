
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qed_nvm_image_att {int length; int start_addr; } ;
struct qed_hwfn {int cdev; } ;
typedef enum qed_nvm_images { ____Placeholder_qed_nvm_images } qed_nvm_images ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int,int,...) ;
 int EINVAL ;
 int ENOMEM ;
 int QED_MSG_STORAGE ;
 int memset (int *,int ,int) ;
 int qed_mcp_get_nvm_image_att (struct qed_hwfn*,int,struct qed_nvm_image_att*) ;
 int qed_mcp_nvm_read (int ,int ,int *,int) ;

int qed_mcp_get_nvm_image(struct qed_hwfn *p_hwfn,
     enum qed_nvm_images image_id,
     u8 *p_buffer, u32 buffer_len)
{
 struct qed_nvm_image_att image_att;
 int rc;

 memset(p_buffer, 0, buffer_len);

 rc = qed_mcp_get_nvm_image_att(p_hwfn, image_id, &image_att);
 if (rc)
  return rc;


 if (image_att.length <= 4) {
  DP_VERBOSE(p_hwfn, QED_MSG_STORAGE,
      "Image [%d] is too small - only %d bytes\n",
      image_id, image_att.length);
  return -EINVAL;
 }

 if (image_att.length > buffer_len) {
  DP_VERBOSE(p_hwfn,
      QED_MSG_STORAGE,
      "Image [%d] is too big - %08x bytes where only %08x are available\n",
      image_id, image_att.length, buffer_len);
  return -ENOMEM;
 }

 return qed_mcp_nvm_read(p_hwfn->cdev, image_att.start_addr,
    p_buffer, image_att.length);
}
