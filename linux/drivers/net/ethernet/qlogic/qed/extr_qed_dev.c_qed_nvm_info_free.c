
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * image_att; } ;
struct qed_hwfn {TYPE_1__ nvm_info; } ;


 int kfree (int *) ;

__attribute__((used)) static void qed_nvm_info_free(struct qed_hwfn *p_hwfn)
{
 kfree(p_hwfn->nvm_info.image_att);
 p_hwfn->nvm_info.image_att = ((void*)0);
}
