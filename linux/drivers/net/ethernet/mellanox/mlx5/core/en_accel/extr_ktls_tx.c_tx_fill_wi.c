
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef size_t u16 ;
struct page {int dummy; } ;
struct TYPE_2__ {struct mlx5e_tx_wqe_info* wqe_info; } ;
struct mlx5e_txqsq {TYPE_1__ db; } ;
struct mlx5e_tx_wqe_info {struct page* resync_dump_frag_page; int num_bytes; int num_wqebbs; } ;


 int memset (struct mlx5e_tx_wqe_info*,int ,int) ;

__attribute__((used)) static void tx_fill_wi(struct mlx5e_txqsq *sq,
         u16 pi, u8 num_wqebbs, u32 num_bytes,
         struct page *page)
{
 struct mlx5e_tx_wqe_info *wi = &sq->db.wqe_info[pi];

 memset(wi, 0, sizeof(*wi));
 wi->num_wqebbs = num_wqebbs;
 wi->num_bytes = num_bytes;
 wi->resync_dump_frag_page = page;
}
