
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct si_pub {int dummy; } ;
struct bcma_device {int dummy; } ;


 int SCC_SS_XTAL ;

__attribute__((used)) static uint ai_slowclk_src(struct si_pub *sih, struct bcma_device *cc)
{
 return SCC_SS_XTAL;
}
