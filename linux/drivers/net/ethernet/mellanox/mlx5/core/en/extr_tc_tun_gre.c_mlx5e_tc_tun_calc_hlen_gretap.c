
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5e_encap_entry {TYPE_2__* tun_info; } ;
struct TYPE_3__ {int tun_flags; } ;
struct TYPE_4__ {TYPE_1__ key; } ;


 int gre_calc_hlen (int ) ;

__attribute__((used)) static int mlx5e_tc_tun_calc_hlen_gretap(struct mlx5e_encap_entry *e)
{
 return gre_calc_hlen(e->tun_info->key.tun_flags);
}
