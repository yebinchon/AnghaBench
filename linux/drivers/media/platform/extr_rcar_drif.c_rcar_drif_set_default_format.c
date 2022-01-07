
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rcar_drif_sdr {scalar_t__ num_hw_ch; scalar_t__ num_cur_ch; int cur_ch_mask; int dev; int hw_ch_mask; TYPE_1__* fmt; } ;
struct TYPE_3__ {scalar_t__ num_ch; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int dev_dbg (int ,char*,unsigned int,int ,scalar_t__) ;
 TYPE_1__* formats ;

__attribute__((used)) static int rcar_drif_set_default_format(struct rcar_drif_sdr *sdr)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(formats); i++) {

  if (sdr->num_hw_ch == formats[i].num_ch) {
   sdr->fmt = &formats[i];
   sdr->cur_ch_mask = sdr->hw_ch_mask;
   sdr->num_cur_ch = sdr->num_hw_ch;
   dev_dbg(sdr->dev, "default fmt[%u]: mask %lu num %u\n",
    i, sdr->cur_ch_mask, sdr->num_cur_ch);
   return 0;
  }
 }
 return -EINVAL;
}
