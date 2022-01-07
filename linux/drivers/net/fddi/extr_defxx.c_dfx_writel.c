
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ mem; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef TYPE_2__ DFX_board_t ;


 int mb () ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void dfx_writel(DFX_board_t *bp, int offset, u32 data)
{
 writel(data, bp->base.mem + offset);
 mb();
}
