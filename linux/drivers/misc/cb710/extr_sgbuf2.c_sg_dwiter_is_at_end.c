
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_mapping_iter {scalar_t__ length; scalar_t__ consumed; } ;


 int sg_dwiter_next (struct sg_mapping_iter*) ;

__attribute__((used)) static bool sg_dwiter_is_at_end(struct sg_mapping_iter *miter)
{
 return miter->length == miter->consumed && !sg_dwiter_next(miter);
}
