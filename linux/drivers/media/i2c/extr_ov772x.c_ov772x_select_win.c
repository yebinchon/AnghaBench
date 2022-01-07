
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ width; scalar_t__ height; } ;
struct ov772x_win_size {TYPE_1__ rect; } ;


 unsigned int ARRAY_SIZE (struct ov772x_win_size*) ;
 scalar_t__ UINT_MAX ;
 scalar_t__ abs (scalar_t__) ;
 struct ov772x_win_size* ov772x_win_sizes ;

__attribute__((used)) static const struct ov772x_win_size *ov772x_select_win(u32 width, u32 height)
{
 const struct ov772x_win_size *win = &ov772x_win_sizes[0];
 u32 best_diff = UINT_MAX;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(ov772x_win_sizes); ++i) {
  u32 diff = abs(width - ov772x_win_sizes[i].rect.width)
    + abs(height - ov772x_win_sizes[i].rect.height);
  if (diff < best_diff) {
   best_diff = diff;
   win = &ov772x_win_sizes[i];
  }
 }

 return win;
}
