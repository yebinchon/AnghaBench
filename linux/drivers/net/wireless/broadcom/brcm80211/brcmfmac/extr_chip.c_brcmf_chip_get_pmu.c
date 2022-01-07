
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_core {int rev; } ;
struct brcmf_chip {int cc_caps_ext; } ;


 int BCMA_CC_CAP_EXT_AOB_PRESENT ;
 int BCMA_CORE_PMU ;
 struct brcmf_core* brcmf_chip_get_chipcommon (struct brcmf_chip*) ;
 struct brcmf_core* brcmf_chip_get_core (struct brcmf_chip*,int ) ;

struct brcmf_core *brcmf_chip_get_pmu(struct brcmf_chip *pub)
{
 struct brcmf_core *cc = brcmf_chip_get_chipcommon(pub);
 struct brcmf_core *pmu;


 if (cc->rev >= 35 &&
     pub->cc_caps_ext & BCMA_CC_CAP_EXT_AOB_PRESENT) {
  pmu = brcmf_chip_get_core(pub, BCMA_CORE_PMU);
  if (pmu)
   return pmu;
 }


 return cc;
}
