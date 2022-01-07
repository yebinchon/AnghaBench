
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int val; } ;
struct qed_ilt_client_cfg {TYPE_1__ p_size; } ;
struct qed_ilt_cli_blk {int total_size; int real_size_in_page; int start_line; } ;


 int ILT_PAGE_IN_BYTES (int ) ;

__attribute__((used)) static void qed_ilt_cli_blk_fill(struct qed_ilt_client_cfg *p_cli,
     struct qed_ilt_cli_blk *p_blk,
     u32 start_line, u32 total_size, u32 elem_size)
{
 u32 ilt_size = ILT_PAGE_IN_BYTES(p_cli->p_size.val);


 if (p_blk->total_size)
  return;

 p_blk->total_size = total_size;
 p_blk->real_size_in_page = 0;
 if (elem_size)
  p_blk->real_size_in_page = (ilt_size / elem_size) * elem_size;
 p_blk->start_line = start_line;
}
