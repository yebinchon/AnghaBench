
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fir32_state_t {int* history; size_t curr_pos; int taps; int* coeffs; } ;
typedef int int32_t ;
typedef int int16_t ;



__attribute__((used)) static inline int16_t fir32(struct fir32_state_t *fir, int16_t sample)
{
 int i;
 int32_t y;
 int offset1;
 int offset2;

 fir->history[fir->curr_pos] = sample;
 offset2 = fir->curr_pos;
 offset1 = fir->taps - offset2;
 y = 0;
 for (i = fir->taps - 1; i >= offset1; i--)
  y += fir->coeffs[i] * fir->history[i - offset1];
 for (; i >= 0; i--)
  y += fir->coeffs[i] * fir->history[i + offset2];
 if (fir->curr_pos <= 0)
  fir->curr_pos = fir->taps;
 fir->curr_pos--;
 return (int16_t) (y >> 15);
}
