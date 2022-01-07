
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bnx2x {int dummy; } ;


 int BP_FUNC (struct bnx2x*) ;
 int storm_memset_eq_prod (struct bnx2x*,int ,int ) ;

__attribute__((used)) static void bnx2x_update_eq_prod(struct bnx2x *bp, u16 prod)
{

 storm_memset_eq_prod(bp, prod, BP_FUNC(bp));
}
