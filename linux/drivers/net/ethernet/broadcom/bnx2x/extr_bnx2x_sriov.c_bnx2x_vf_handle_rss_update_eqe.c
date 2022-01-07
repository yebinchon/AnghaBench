
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* clear_pending ) (TYPE_2__*) ;} ;
struct TYPE_3__ {TYPE_2__ raw; } ;
struct bnx2x_virtf {TYPE_1__ rss_conf_obj; } ;
struct bnx2x {int dummy; } ;


 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void bnx2x_vf_handle_rss_update_eqe(struct bnx2x *bp,
        struct bnx2x_virtf *vf)
{
 vf->rss_conf_obj.raw.clear_pending(&vf->rss_conf_obj.raw);
}
