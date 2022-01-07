
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum si476x_phase_diversity_mode { ____Placeholder_si476x_phase_diversity_mode } si476x_phase_diversity_mode ;
typedef enum phase_diversity_modes_idx { ____Placeholder_phase_diversity_modes_idx } phase_diversity_modes_idx ;
__attribute__((used)) static inline enum si476x_phase_diversity_mode
si476x_phase_diversity_idx_to_mode(enum phase_diversity_modes_idx idx)
{
 static const int idx_to_value[] = {
  [137] = 132,
  [135] = 130,
  [136] = 131,
  [134] = 129,
  [133] = 128,
 };

 return idx_to_value[idx];
}
