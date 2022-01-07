
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum si476x_phase_diversity_mode { ____Placeholder_si476x_phase_diversity_mode } si476x_phase_diversity_mode ;
typedef enum phase_diversity_modes_idx { ____Placeholder_phase_diversity_modes_idx } phase_diversity_modes_idx ;


 int SI476X_IDX_PHDIV_DISABLED ;
 int SI476X_IDX_PHDIV_PRIMARY_ANTENNA ;
 int SI476X_IDX_PHDIV_PRIMARY_COMBINING ;
 int SI476X_IDX_PHDIV_SECONDARY_ANTENNA ;
 int SI476X_IDX_PHDIV_SECONDARY_COMBINING ;






__attribute__((used)) static inline enum phase_diversity_modes_idx
si476x_phase_diversity_mode_to_idx(enum si476x_phase_diversity_mode mode)
{
 switch (mode) {
 default:
 case 132:
  return SI476X_IDX_PHDIV_DISABLED;
 case 130:
  return SI476X_IDX_PHDIV_PRIMARY_COMBINING;
 case 131:
  return SI476X_IDX_PHDIV_PRIMARY_ANTENNA;
 case 129:
  return SI476X_IDX_PHDIV_SECONDARY_ANTENNA;
 case 128:
  return SI476X_IDX_PHDIV_SECONDARY_COMBINING;
 }
}
