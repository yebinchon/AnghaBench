
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_mcp_cmd_elem {int list; } ;
struct qed_hwfn {int dummy; } ;


 int kfree (struct qed_mcp_cmd_elem*) ;
 int list_del (int *) ;

__attribute__((used)) static void qed_mcp_cmd_del_elem(struct qed_hwfn *p_hwfn,
     struct qed_mcp_cmd_elem *p_cmd_elem)
{
 list_del(&p_cmd_elem->list);
 kfree(p_cmd_elem);
}
