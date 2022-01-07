
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mult; scalar_t__ shift; int mask; int read; } ;
struct bnx2x {TYPE_1__ cyclecounter; } ;


 int CYCLECOUNTER_MASK (int) ;
 int bnx2x_cyclecounter_read ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void bnx2x_init_cyclecounter(struct bnx2x *bp)
{
 memset(&bp->cyclecounter, 0, sizeof(bp->cyclecounter));
 bp->cyclecounter.read = bnx2x_cyclecounter_read;
 bp->cyclecounter.mask = CYCLECOUNTER_MASK(64);
 bp->cyclecounter.shift = 0;
 bp->cyclecounter.mult = 1;
}
