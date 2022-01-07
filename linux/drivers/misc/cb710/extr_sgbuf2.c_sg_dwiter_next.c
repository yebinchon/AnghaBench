
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_mapping_iter {scalar_t__ consumed; } ;


 scalar_t__ sg_miter_next (struct sg_mapping_iter*) ;

__attribute__((used)) static bool sg_dwiter_next(struct sg_mapping_iter *miter)
{
 if (sg_miter_next(miter)) {
  miter->consumed = 0;
  return 1;
 } else
  return 0;
}
