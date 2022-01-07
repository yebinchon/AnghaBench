
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_item {size_t step; size_t offset; size_t in_step_offset; int name; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int pr_err (char*,int ,size_t,size_t,size_t,size_t) ;

__attribute__((used)) static inline unsigned int
__mlxsw_item_offset(const struct mlxsw_item *item, unsigned short index,
      size_t typesize)
{
 BUG_ON(index && !item->step);
 if (item->offset % typesize != 0 ||
     item->step % typesize != 0 ||
     item->in_step_offset % typesize != 0) {
  pr_err("mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\n",
         item->name, item->offset, item->step,
         item->in_step_offset, typesize);
  BUG();
 }

 return ((item->offset + item->step * index + item->in_step_offset) /
  typesize);
}
