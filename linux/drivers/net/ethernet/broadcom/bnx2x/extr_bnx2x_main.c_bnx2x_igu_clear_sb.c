
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bnx2x {int dummy; } ;


 int BP_FUNC (struct bnx2x*) ;
 int bnx2x_igu_clear_sb_gen (struct bnx2x*,int ,int ,int) ;

__attribute__((used)) static void bnx2x_igu_clear_sb(struct bnx2x *bp, u8 idu_sb_id)
{
 bnx2x_igu_clear_sb_gen(bp, BP_FUNC(bp), idu_sb_id, 1 );
}
