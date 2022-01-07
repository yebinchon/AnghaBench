
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {int dummy; } ;
typedef enum osd_rom_clut { ____Placeholder_osd_rom_clut } osd_rom_clut ;


 int OSD_MISCCTL ;
 int OSD_MISCCTL_RSEL ;
 int ROM_CLUT0 ;
 int osd_clear (struct osd_state*,int ,int ) ;
 int osd_set (struct osd_state*,int ,int ) ;

__attribute__((used)) static void _osd_set_rom_clut(struct osd_state *sd,
         enum osd_rom_clut rom_clut)
{
 if (rom_clut == ROM_CLUT0)
  osd_clear(sd, OSD_MISCCTL_RSEL, OSD_MISCCTL);
 else
  osd_set(sd, OSD_MISCCTL_RSEL, OSD_MISCCTL);
}
