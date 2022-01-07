
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {scalar_t__ vpbe_type; int rom_clut; int field_inversion; int yc_pixfmt; } ;


 int ENODEV ;
 int PIXFMT_YCBCRI ;
 int ROM_CLUT1 ;
 scalar_t__ VPBE_VERSION_3 ;
 int WIN_OSD0 ;
 int WIN_OSD1 ;
 int WIN_VID0 ;
 int WIN_VID1 ;
 int _osd_init (struct osd_state*) ;
 int _osd_set_field_inversion (struct osd_state*,int ) ;
 int _osd_set_rom_clut (struct osd_state*,int ) ;
 int osd_init_layer (struct osd_state*,int ) ;

__attribute__((used)) static int osd_initialize(struct osd_state *osd)
{
 if (osd == ((void*)0))
  return -ENODEV;
 _osd_init(osd);


 osd->yc_pixfmt = PIXFMT_YCBCRI;

 if (osd->vpbe_type == VPBE_VERSION_3) {




  osd->rom_clut = ROM_CLUT1;
 }

 _osd_set_field_inversion(osd, osd->field_inversion);
 _osd_set_rom_clut(osd, osd->rom_clut);

 osd_init_layer(osd, WIN_OSD0);
 osd_init_layer(osd, WIN_VID0);
 osd_init_layer(osd, WIN_OSD1);
 osd_init_layer(osd, WIN_VID1);

 return 0;
}
