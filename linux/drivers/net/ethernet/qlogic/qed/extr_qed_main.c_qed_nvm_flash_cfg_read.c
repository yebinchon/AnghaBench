
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {int dummy; } ;


 int DP_ERR (struct qed_dev*,char*,int,int ) ;
 int DP_VERBOSE (struct qed_dev*,int ,char*,int ,int ) ;
 int EAGAIN ;
 int NETIF_MSG_DRV ;
 struct qed_hwfn* QED_LEADING_HWFN (struct qed_dev*) ;
 int QED_NVM_CFG_GET_FLAGS ;
 int QED_NVM_CFG_GET_PF_FLAGS ;
 int qed_mcp_nvm_get_cfg (struct qed_hwfn*,struct qed_ptt*,int ,int ,int ,int *,int *) ;
 struct qed_ptt* qed_ptt_acquire (struct qed_hwfn*) ;
 int qed_ptt_release (struct qed_hwfn*,struct qed_ptt*) ;

__attribute__((used)) static int qed_nvm_flash_cfg_read(struct qed_dev *cdev, u8 **data,
      u32 cmd, u32 entity_id)
{
 struct qed_hwfn *hwfn = QED_LEADING_HWFN(cdev);
 struct qed_ptt *ptt;
 u32 flags, len;
 int rc = 0;

 ptt = qed_ptt_acquire(hwfn);
 if (!ptt)
  return -EAGAIN;

 DP_VERBOSE(cdev, NETIF_MSG_DRV,
     "Read config cmd = %d entity id %d\n", cmd, entity_id);
 flags = entity_id ? QED_NVM_CFG_GET_PF_FLAGS : QED_NVM_CFG_GET_FLAGS;
 rc = qed_mcp_nvm_get_cfg(hwfn, ptt, cmd, entity_id, flags, *data, &len);
 if (rc)
  DP_ERR(cdev, "Error %d reading %d\n", rc, cmd);

 qed_ptt_release(hwfn, ptt);

 return rc;
}
