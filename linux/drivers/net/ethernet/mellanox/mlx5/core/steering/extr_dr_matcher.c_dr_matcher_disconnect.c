
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5dr_table_rx_tx {int default_icm_addr; struct mlx5dr_ste_htbl* s_anchor; struct mlx5dr_domain_rx_tx* nic_dmn; } ;
struct mlx5dr_ste_htbl {TYPE_2__* ste_arr; } ;
struct mlx5dr_matcher_rx_tx {TYPE_1__* s_htbl; struct mlx5dr_ste_htbl* e_anchor; } ;
struct mlx5dr_htbl_connect_info {int miss_icm_addr; int type; TYPE_1__* hit_next_htbl; } ;
struct mlx5dr_domain_rx_tx {int dummy; } ;
struct mlx5dr_domain {int dummy; } ;
struct TYPE_4__ {TYPE_1__* next_htbl; } ;
struct TYPE_3__ {TYPE_2__* pointing_ste; } ;


 int CONNECT_HIT ;
 int CONNECT_MISS ;
 int mlx5dr_ste_htbl_init_and_postsend (struct mlx5dr_domain*,struct mlx5dr_domain_rx_tx*,struct mlx5dr_ste_htbl*,struct mlx5dr_htbl_connect_info*,int) ;

__attribute__((used)) static int dr_matcher_disconnect(struct mlx5dr_domain *dmn,
     struct mlx5dr_table_rx_tx *nic_tbl,
     struct mlx5dr_matcher_rx_tx *next_nic_matcher,
     struct mlx5dr_matcher_rx_tx *prev_nic_matcher)
{
 struct mlx5dr_domain_rx_tx *nic_dmn = nic_tbl->nic_dmn;
 struct mlx5dr_htbl_connect_info info;
 struct mlx5dr_ste_htbl *prev_anchor;

 if (prev_nic_matcher)
  prev_anchor = prev_nic_matcher->e_anchor;
 else
  prev_anchor = nic_tbl->s_anchor;


 if (next_nic_matcher) {
  info.type = CONNECT_HIT;
  info.hit_next_htbl = next_nic_matcher->s_htbl;
  next_nic_matcher->s_htbl->pointing_ste = prev_anchor->ste_arr;
  prev_anchor->ste_arr[0].next_htbl = next_nic_matcher->s_htbl;
 } else {
  info.type = CONNECT_MISS;
  info.miss_icm_addr = nic_tbl->default_icm_addr;
  prev_anchor->ste_arr[0].next_htbl = ((void*)0);
 }

 return mlx5dr_ste_htbl_init_and_postsend(dmn, nic_dmn, prev_anchor,
       &info, 1);
}
