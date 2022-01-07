
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct qed_mcp_mb_params {int dummy; } ;
struct qed_mcp_cmd_elem {int list; int expected_seq_num; struct qed_mcp_mb_params* p_mb_params; } ;
struct qed_hwfn {TYPE_1__* mcp_info; } ;
struct TYPE_2__ {int cmd_list; } ;


 int GFP_ATOMIC ;
 struct qed_mcp_cmd_elem* kzalloc (int,int ) ;
 int list_add (int *,int *) ;

__attribute__((used)) static struct qed_mcp_cmd_elem *
qed_mcp_cmd_add_elem(struct qed_hwfn *p_hwfn,
       struct qed_mcp_mb_params *p_mb_params,
       u16 expected_seq_num)
{
 struct qed_mcp_cmd_elem *p_cmd_elem = ((void*)0);

 p_cmd_elem = kzalloc(sizeof(*p_cmd_elem), GFP_ATOMIC);
 if (!p_cmd_elem)
  goto out;

 p_cmd_elem->p_mb_params = p_mb_params;
 p_cmd_elem->expected_seq_num = expected_seq_num;
 list_add(&p_cmd_elem->list, &p_hwfn->mcp_info->cmd_list);
out:
 return p_cmd_elem;
}
