
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ARRAY_SIZE (int ) ;
 scalar_t__ B43_TAB_FINEFREQA_SIZE ;
 scalar_t__ B43_TAB_FINEFREQG_SIZE ;
 scalar_t__ B43_TAB_NOISEA2_SIZE ;
 scalar_t__ B43_TAB_NOISEA3_SIZE ;
 scalar_t__ B43_TAB_NOISEG1_SIZE ;
 scalar_t__ B43_TAB_NOISEG2_SIZE ;
 scalar_t__ B43_TAB_NOISESCALE_SIZE ;
 scalar_t__ B43_TAB_RETARD_SIZE ;
 scalar_t__ B43_TAB_ROTOR_SIZE ;
 scalar_t__ B43_TAB_RSSIAGC1_SIZE ;
 scalar_t__ B43_TAB_RSSIAGC2_SIZE ;
 scalar_t__ B43_TAB_SIGMASQR_SIZE ;
 int BUILD_BUG_ON (int) ;
 int b43_tab_finefreqa ;
 int b43_tab_finefreqg ;
 int b43_tab_noisea2 ;
 int b43_tab_noisea3 ;
 int b43_tab_noiseg1 ;
 int b43_tab_noiseg2 ;
 int b43_tab_noisescalea2 ;
 int b43_tab_noisescalea3 ;
 int b43_tab_noisescaleg1 ;
 int b43_tab_noisescaleg2 ;
 int b43_tab_noisescaleg3 ;
 int b43_tab_retard ;
 int b43_tab_rotor ;
 int b43_tab_rssiagc1 ;
 int b43_tab_rssiagc2 ;
 int b43_tab_sigmasqr1 ;
 int b43_tab_sigmasqr2 ;

__attribute__((used)) static inline void assert_sizes(void)
{
 BUILD_BUG_ON(B43_TAB_ROTOR_SIZE != ARRAY_SIZE(b43_tab_rotor));
 BUILD_BUG_ON(B43_TAB_RETARD_SIZE != ARRAY_SIZE(b43_tab_retard));
 BUILD_BUG_ON(B43_TAB_FINEFREQA_SIZE != ARRAY_SIZE(b43_tab_finefreqa));
 BUILD_BUG_ON(B43_TAB_FINEFREQG_SIZE != ARRAY_SIZE(b43_tab_finefreqg));
 BUILD_BUG_ON(B43_TAB_NOISEA2_SIZE != ARRAY_SIZE(b43_tab_noisea2));
 BUILD_BUG_ON(B43_TAB_NOISEA3_SIZE != ARRAY_SIZE(b43_tab_noisea3));
 BUILD_BUG_ON(B43_TAB_NOISEG1_SIZE != ARRAY_SIZE(b43_tab_noiseg1));
 BUILD_BUG_ON(B43_TAB_NOISEG2_SIZE != ARRAY_SIZE(b43_tab_noiseg2));
 BUILD_BUG_ON(B43_TAB_NOISESCALE_SIZE !=
       ARRAY_SIZE(b43_tab_noisescalea2));
 BUILD_BUG_ON(B43_TAB_NOISESCALE_SIZE !=
       ARRAY_SIZE(b43_tab_noisescalea3));
 BUILD_BUG_ON(B43_TAB_NOISESCALE_SIZE !=
       ARRAY_SIZE(b43_tab_noisescaleg1));
 BUILD_BUG_ON(B43_TAB_NOISESCALE_SIZE !=
       ARRAY_SIZE(b43_tab_noisescaleg2));
 BUILD_BUG_ON(B43_TAB_NOISESCALE_SIZE !=
       ARRAY_SIZE(b43_tab_noisescaleg3));
 BUILD_BUG_ON(B43_TAB_SIGMASQR_SIZE != ARRAY_SIZE(b43_tab_sigmasqr1));
 BUILD_BUG_ON(B43_TAB_SIGMASQR_SIZE != ARRAY_SIZE(b43_tab_sigmasqr2));
 BUILD_BUG_ON(B43_TAB_RSSIAGC1_SIZE != ARRAY_SIZE(b43_tab_rssiagc1));
 BUILD_BUG_ON(B43_TAB_RSSIAGC2_SIZE != ARRAY_SIZE(b43_tab_rssiagc2));
}
