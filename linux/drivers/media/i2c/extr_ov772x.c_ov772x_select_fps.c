
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fract {int numerator; unsigned int denominator; } ;
struct ov772x_priv {int dummy; } ;


 unsigned int ARRAY_SIZE (unsigned int*) ;
 unsigned int abs (unsigned int) ;
 unsigned int* ov772x_frame_intervals ;

__attribute__((used)) static unsigned int ov772x_select_fps(struct ov772x_priv *priv,
          struct v4l2_fract *tpf)
{
 unsigned int fps = tpf->numerator ?
      tpf->denominator / tpf->numerator :
      tpf->denominator;
 unsigned int best_diff;
 unsigned int diff;
 unsigned int idx;
 unsigned int i;


 best_diff = ~0L;
 for (i = 0, idx = 0; i < ARRAY_SIZE(ov772x_frame_intervals); i++) {
  diff = abs(fps - ov772x_frame_intervals[i]);
  if (diff < best_diff) {
   idx = i;
   best_diff = diff;
  }
 }

 return ov772x_frame_intervals[idx];
}
