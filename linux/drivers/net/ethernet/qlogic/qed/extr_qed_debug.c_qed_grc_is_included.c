
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int dummy; } ;
typedef enum dbg_grc_params { ____Placeholder_dbg_grc_params } dbg_grc_params ;


 scalar_t__ qed_grc_get_param (struct qed_hwfn*,int) ;

__attribute__((used)) static bool qed_grc_is_included(struct qed_hwfn *p_hwfn,
    enum dbg_grc_params grc_param)
{
 return qed_grc_get_param(p_hwfn, grc_param) > 0;
}
