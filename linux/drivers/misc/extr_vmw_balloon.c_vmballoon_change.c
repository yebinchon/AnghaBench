
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmballoon {int shrink_timeout; scalar_t__ reset_required; int target; int size; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ READ_ONCE (int ) ;
 int VMW_BALLOON_2M_PAGE ;
 scalar_t__ atomic64_read (int *) ;
 int jiffies ;
 scalar_t__ time_before (int ,scalar_t__) ;
 scalar_t__ vmballoon_page_in_frames (int ) ;

__attribute__((used)) static int64_t vmballoon_change(struct vmballoon *b)
{
 int64_t size, target;

 size = atomic64_read(&b->size);
 target = READ_ONCE(b->target);






 if (b->reset_required)
  return 0;


 if (target < size && target != 0 &&
     size - target < vmballoon_page_in_frames(VMW_BALLOON_2M_PAGE))
  return 0;


 if (target > size && time_before(jiffies, READ_ONCE(b->shrink_timeout)))
  return 0;

 return target - size;
}
