
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct qed_nvm_image_att {int length; int start_addr; } ;
struct TYPE_4__ {size_t num_images; TYPE_1__* image_att; } ;
struct qed_hwfn {TYPE_2__ nvm_info; } ;
typedef enum qed_nvm_images { ____Placeholder_qed_nvm_images } qed_nvm_images ;
typedef enum nvm_image_type { ____Placeholder_nvm_image_type } nvm_image_type ;
struct TYPE_3__ {int image_type; int len; int nvm_start_addr; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,int) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int) ;
 int EINVAL ;
 int ENOENT ;
 int NVM_TYPE_DEFAULT_CFG ;
 int NVM_TYPE_FCOE_CFG ;
 int NVM_TYPE_ISCSI_CFG ;
 int NVM_TYPE_META ;
 int NVM_TYPE_NVM_CFG1 ;
 int QED_MSG_STORAGE ;





 int qed_mcp_nvm_info_populate (struct qed_hwfn*) ;

int
qed_mcp_get_nvm_image_att(struct qed_hwfn *p_hwfn,
     enum qed_nvm_images image_id,
     struct qed_nvm_image_att *p_image_att)
{
 enum nvm_image_type type;
 u32 i;


 switch (image_id) {
 case 130:
  type = NVM_TYPE_ISCSI_CFG;
  break;
 case 131:
  type = NVM_TYPE_FCOE_CFG;
  break;
 case 129:
  type = NVM_TYPE_NVM_CFG1;
  break;
 case 132:
  type = NVM_TYPE_DEFAULT_CFG;
  break;
 case 128:
  type = NVM_TYPE_META;
  break;
 default:
  DP_NOTICE(p_hwfn, "Unknown request of image_id %08x\n",
     image_id);
  return -EINVAL;
 }

 qed_mcp_nvm_info_populate(p_hwfn);
 for (i = 0; i < p_hwfn->nvm_info.num_images; i++)
  if (type == p_hwfn->nvm_info.image_att[i].image_type)
   break;
 if (i == p_hwfn->nvm_info.num_images) {
  DP_VERBOSE(p_hwfn, QED_MSG_STORAGE,
      "Failed to find nvram image of type %08x\n",
      image_id);
  return -ENOENT;
 }

 p_image_att->start_addr = p_hwfn->nvm_info.image_att[i].nvm_start_addr;
 p_image_att->length = p_hwfn->nvm_info.image_att[i].len;

 return 0;
}
