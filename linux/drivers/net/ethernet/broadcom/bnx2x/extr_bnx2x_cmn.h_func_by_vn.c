
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 int BP_PORT (struct bnx2x*) ;

__attribute__((used)) static inline int func_by_vn(struct bnx2x *bp, int vn)
{
 return 2 * vn + BP_PORT(bp);
}
