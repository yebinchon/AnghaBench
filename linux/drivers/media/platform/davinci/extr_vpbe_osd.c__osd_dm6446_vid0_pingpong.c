
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct osd_state {TYPE_1__* dev; } ;
struct osd_platform_data {scalar_t__ field_inv_wa_enable; } ;
struct osd_layer_config {unsigned long line_length; int interlaced; } ;
struct TYPE_2__ {scalar_t__ platform_data; } ;


 int OSD_MISCCTL ;
 unsigned int OSD_MISCCTL_PPRV ;
 unsigned int OSD_MISCCTL_PPSW ;
 int OSD_PPVWIN0ADR ;
 int OSD_VIDWIN0ADR ;
 int osd_modify (struct osd_state*,unsigned int,unsigned int,int ) ;
 int osd_write (struct osd_state*,unsigned long,int ) ;

__attribute__((used)) static int _osd_dm6446_vid0_pingpong(struct osd_state *sd,
         int field_inversion,
         unsigned long fb_base_phys,
         const struct osd_layer_config *lconfig)
{
 struct osd_platform_data *pdata;

 pdata = (struct osd_platform_data *)sd->dev->platform_data;
 if (pdata != ((void*)0) && pdata->field_inv_wa_enable) {

  if (!field_inversion || !lconfig->interlaced) {
   osd_write(sd, fb_base_phys & ~0x1F, OSD_VIDWIN0ADR);
   osd_write(sd, fb_base_phys & ~0x1F, OSD_PPVWIN0ADR);
   osd_modify(sd, OSD_MISCCTL_PPSW | OSD_MISCCTL_PPRV, 0,
       OSD_MISCCTL);
   return 0;
  } else {
   unsigned miscctl = OSD_MISCCTL_PPRV;

   osd_write(sd,
    (fb_base_phys & ~0x1F) - lconfig->line_length,
    OSD_VIDWIN0ADR);
   osd_write(sd,
    (fb_base_phys & ~0x1F) + lconfig->line_length,
    OSD_PPVWIN0ADR);
   osd_modify(sd,
    OSD_MISCCTL_PPSW | OSD_MISCCTL_PPRV, miscctl,
    OSD_MISCCTL);

   return 1;
  }
 }

 return 0;
}
