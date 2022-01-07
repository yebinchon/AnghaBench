
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct bnx2x_ilt {int start_line; TYPE_1__* lines; } ;
struct bnx2x {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int page_mapping; } ;





 int bnx2x_ilt_line_wr (struct bnx2x*,int,int ) ;

__attribute__((used)) static void bnx2x_ilt_line_init_op(struct bnx2x *bp,
       struct bnx2x_ilt *ilt, int idx, u8 initop)
{
 dma_addr_t null_mapping;
 int abs_idx = ilt->start_line + idx;


 switch (initop) {
 case 129:

 case 128:
  bnx2x_ilt_line_wr(bp, abs_idx, ilt->lines[idx].page_mapping);
  break;
 case 130:
  null_mapping = 0;
  bnx2x_ilt_line_wr(bp, abs_idx, null_mapping);
  break;
 }
}
