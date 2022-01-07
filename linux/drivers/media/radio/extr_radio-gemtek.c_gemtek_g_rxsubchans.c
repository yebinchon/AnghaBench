
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radio_isa_card {int io; } ;


 int GEMTEK_NS ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_STEREO ;
 int inb_p (int ) ;

__attribute__((used)) static u32 gemtek_g_rxsubchans(struct radio_isa_card *isa)
{
 if (inb_p(isa->io) & GEMTEK_NS)
  return V4L2_TUNER_SUB_MONO;
 return V4L2_TUNER_SUB_STEREO;
}
