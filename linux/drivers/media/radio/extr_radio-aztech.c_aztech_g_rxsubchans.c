
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radio_isa_card {int io; } ;


 int AZTECH_BIT_MONO ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_STEREO ;
 int inb (int ) ;

__attribute__((used)) static u32 aztech_g_rxsubchans(struct radio_isa_card *isa)
{
 if (inb(isa->io) & AZTECH_BIT_MONO)
  return V4L2_TUNER_SUB_MONO;
 return V4L2_TUNER_SUB_STEREO;
}
