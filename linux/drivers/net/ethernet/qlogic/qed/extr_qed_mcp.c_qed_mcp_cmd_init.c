
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_mcp_info {void* mfw_mb_shadow; void* mfw_mb_cur; int mfw_mb_length; int cmd_list; int link_lock; int cmd_lock; } ;
struct qed_hwfn {struct qed_mcp_info* mcp_info; } ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MFW_DRV_MSG_MAX_DWORDS (int ) ;
 void* kzalloc (int,int ) ;
 scalar_t__ qed_load_mcp_offsets (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_mcp_free (struct qed_hwfn*) ;
 int spin_lock_init (int *) ;

int qed_mcp_cmd_init(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 struct qed_mcp_info *p_info;
 u32 size;


 p_hwfn->mcp_info = kzalloc(sizeof(*p_hwfn->mcp_info), GFP_KERNEL);
 if (!p_hwfn->mcp_info)
  goto err;
 p_info = p_hwfn->mcp_info;


 spin_lock_init(&p_info->cmd_lock);
 spin_lock_init(&p_info->link_lock);

 INIT_LIST_HEAD(&p_info->cmd_list);

 if (qed_load_mcp_offsets(p_hwfn, p_ptt) != 0) {
  DP_NOTICE(p_hwfn, "MCP is not initialized\n");



  return 0;
 }

 size = MFW_DRV_MSG_MAX_DWORDS(p_info->mfw_mb_length) * sizeof(u32);
 p_info->mfw_mb_cur = kzalloc(size, GFP_KERNEL);
 p_info->mfw_mb_shadow = kzalloc(size, GFP_KERNEL);
 if (!p_info->mfw_mb_cur || !p_info->mfw_mb_shadow)
  goto err;

 return 0;

err:
 qed_mcp_free(p_hwfn);
 return -ENOMEM;
}
