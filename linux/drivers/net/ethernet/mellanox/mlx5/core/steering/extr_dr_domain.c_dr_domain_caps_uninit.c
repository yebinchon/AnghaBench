
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vports_caps; } ;
struct TYPE_4__ {TYPE_1__ caps; } ;
struct mlx5dr_domain {TYPE_2__ info; } ;


 int kfree (int ) ;

__attribute__((used)) static void dr_domain_caps_uninit(struct mlx5dr_domain *dmn)
{
 kfree(dmn->info.caps.vports_caps);
}
