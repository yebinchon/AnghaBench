
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct genwqe_reg {int dummy; } ;
struct genwqe_dev {int dummy; } ;


 int set_reg_idx (struct genwqe_dev*,struct genwqe_reg*,unsigned int*,unsigned int,int ,int ,int ) ;

__attribute__((used)) static int set_reg(struct genwqe_dev *cd, struct genwqe_reg *r,
     unsigned int *i, unsigned int m, u32 addr, u64 val)
{
 return set_reg_idx(cd, r, i, m, addr, 0, val);
}
