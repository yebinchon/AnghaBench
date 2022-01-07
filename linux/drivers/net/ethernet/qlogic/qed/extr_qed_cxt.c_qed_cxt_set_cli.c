
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ val; } ;
struct TYPE_3__ {scalar_t__ val; } ;
struct qed_ilt_client_cfg {int active; TYPE_2__ last; TYPE_1__ first; } ;



__attribute__((used)) static struct qed_ilt_client_cfg *qed_cxt_set_cli(struct qed_ilt_client_cfg
        *p_cli)
{
 p_cli->active = 0;
 p_cli->first.val = 0;
 p_cli->last.val = 0;
 return p_cli;
}
