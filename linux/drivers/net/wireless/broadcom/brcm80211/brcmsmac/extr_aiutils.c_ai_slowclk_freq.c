
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct si_pub {int dummy; } ;
struct bcma_device {int dummy; } ;


 int CHIPCREGOFFS (int ) ;
 int SYCC_CD_SHIFT ;
 int XTALMAXFREQ ;
 int XTALMINFREQ ;
 int bcma_read32 (struct bcma_device*,int ) ;
 int system_clk_ctl ;

__attribute__((used)) static uint ai_slowclk_freq(struct si_pub *sih, bool max_freq,
       struct bcma_device *cc)
{
 uint div;


 div = bcma_read32(cc, CHIPCREGOFFS(system_clk_ctl));
 div = 4 * ((div >> SYCC_CD_SHIFT) + 1);
 return max_freq ? XTALMAXFREQ : (XTALMINFREQ / div);
}
