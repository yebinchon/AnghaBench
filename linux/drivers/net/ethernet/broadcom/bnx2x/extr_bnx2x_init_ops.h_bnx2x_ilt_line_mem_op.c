
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct ilt_line {int size; int page; int page_mapping; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ILT_FREE (int ,int ,int ) ;
 int BNX2X_ILT_ZALLOC (int ,int *,int ) ;
 scalar_t__ ILT_MEMOP_FREE ;

__attribute__((used)) static int bnx2x_ilt_line_mem_op(struct bnx2x *bp,
     struct ilt_line *line, u32 size, u8 memop)
{
 if (memop == ILT_MEMOP_FREE) {
  BNX2X_ILT_FREE(line->page, line->page_mapping, line->size);
  return 0;
 }
 BNX2X_ILT_ZALLOC(line->page, &line->page_mapping, size);
 if (!line->page)
  return -1;
 line->size = size;
 return 0;
}
