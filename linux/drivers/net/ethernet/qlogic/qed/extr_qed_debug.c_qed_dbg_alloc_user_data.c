
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int dbg_user_info; } ;
struct dbg_tools_user_data {int dummy; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;


 int DBG_STATUS_OK ;
 int DBG_STATUS_VIRT_MEM_ALLOC_FAILED ;
 int GFP_KERNEL ;
 int kzalloc (int,int ) ;

enum dbg_status qed_dbg_alloc_user_data(struct qed_hwfn *p_hwfn)
{
 p_hwfn->dbg_user_info = kzalloc(sizeof(struct dbg_tools_user_data),
     GFP_KERNEL);
 if (!p_hwfn->dbg_user_info)
  return DBG_STATUS_VIRT_MEM_ALLOC_FAILED;

 return DBG_STATUS_OK;
}
