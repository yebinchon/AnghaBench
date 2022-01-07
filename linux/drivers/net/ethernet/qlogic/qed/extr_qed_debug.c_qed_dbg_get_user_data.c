
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {scalar_t__ dbg_user_info; } ;
struct dbg_tools_user_data {int dummy; } ;



__attribute__((used)) static struct dbg_tools_user_data *
qed_dbg_get_user_data(struct qed_hwfn *p_hwfn)
{
 return (struct dbg_tools_user_data *)p_hwfn->dbg_user_info;
}
