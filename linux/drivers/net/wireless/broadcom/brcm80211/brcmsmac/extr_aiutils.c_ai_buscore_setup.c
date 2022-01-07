
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int pmucaps; int pmurev; void* cccaps; int ccrev; } ;
struct si_info {TYPE_3__ pub; void* chipst; } ;
struct TYPE_4__ {int rev; } ;
struct bcma_device {TYPE_1__ id; TYPE_2__* bus; } ;
struct TYPE_5__ {scalar_t__ nr_cores; } ;


 int CC_CAP_PMU ;
 int CHIPCREGOFFS (int ) ;
 int PCAP_REV_MASK ;
 int ai_get_cccaps (TYPE_3__*) ;
 void* bcma_read32 (struct bcma_device*,int ) ;
 int capabilities ;
 int chipstatus ;
 int pmucapabilities ;

__attribute__((used)) static bool
ai_buscore_setup(struct si_info *sii, struct bcma_device *cc)
{

 if (cc->bus->nr_cores == 0)
  return 0;


 sii->pub.ccrev = cc->id.rev;


 sii->chipst = bcma_read32(cc, CHIPCREGOFFS(chipstatus));


 sii->pub.cccaps = bcma_read32(cc, CHIPCREGOFFS(capabilities));


 if (ai_get_cccaps(&sii->pub) & CC_CAP_PMU) {
  sii->pub.pmucaps = bcma_read32(cc,
            CHIPCREGOFFS(pmucapabilities));
  sii->pub.pmurev = sii->pub.pmucaps & PCAP_REV_MASK;
 }

 return 1;
}
