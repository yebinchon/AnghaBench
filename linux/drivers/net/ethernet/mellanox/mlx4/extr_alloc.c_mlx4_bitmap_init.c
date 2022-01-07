
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlx4_bitmap {int table; scalar_t__ max; int lock; scalar_t__ avail; scalar_t__ effective_len; scalar_t__ reserved_top; scalar_t__ mask; scalar_t__ top; scalar_t__ last; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int bitmap_set (int ,int ,scalar_t__) ;
 int bitmap_zalloc (scalar_t__,int ) ;
 scalar_t__ roundup_pow_of_two (scalar_t__) ;
 int spin_lock_init (int *) ;

int mlx4_bitmap_init(struct mlx4_bitmap *bitmap, u32 num, u32 mask,
       u32 reserved_bot, u32 reserved_top)
{

 if (num != roundup_pow_of_two(num))
  return -EINVAL;

 bitmap->last = 0;
 bitmap->top = 0;
 bitmap->max = num - reserved_top;
 bitmap->mask = mask;
 bitmap->reserved_top = reserved_top;
 bitmap->avail = num - reserved_top - reserved_bot;
 bitmap->effective_len = bitmap->avail;
 spin_lock_init(&bitmap->lock);
 bitmap->table = bitmap_zalloc(bitmap->max, GFP_KERNEL);
 if (!bitmap->table)
  return -ENOMEM;

 bitmap_set(bitmap->table, 0, reserved_bot);

 return 0;
}
