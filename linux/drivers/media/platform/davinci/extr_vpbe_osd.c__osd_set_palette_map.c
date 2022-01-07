
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct osd_state {int dummy; } ;
typedef enum osd_win_layer { ____Placeholder_osd_win_layer } osd_win_layer ;
typedef enum osd_pix_format { ____Placeholder_osd_pix_format } osd_pix_format ;




 int OSD_W0BMP01 ;
 int OSD_W1BMP01 ;



 int osd_modify (struct osd_state*,int,unsigned char,int) ;

__attribute__((used)) static void _osd_set_palette_map(struct osd_state *sd,
     enum osd_win_layer osdwin,
     unsigned char pixel_value,
     unsigned char clut_index,
     enum osd_pix_format pixfmt)
{
 static const int map_2bpp[] = { 0, 5, 10, 15 };
 static const int map_1bpp[] = { 0, 15 };
 int bmp_offset;
 int bmp_shift;
 int bmp_mask;
 int bmp_reg;

 switch (pixfmt) {
 case 130:
  bmp_reg = map_1bpp[pixel_value & 0x1];
  break;
 case 129:
  bmp_reg = map_2bpp[pixel_value & 0x3];
  break;
 case 128:
  bmp_reg = pixel_value & 0xf;
  break;
 default:
  return;
 }

 switch (osdwin) {
 case 132:
  bmp_offset = OSD_W0BMP01 + (bmp_reg >> 1) * sizeof(u32);
  break;
 case 131:
  bmp_offset = OSD_W1BMP01 + (bmp_reg >> 1) * sizeof(u32);
  break;
 default:
  return;
 }

 if (bmp_reg & 1) {
  bmp_shift = 8;
  bmp_mask = 0xff << 8;
 } else {
  bmp_shift = 0;
  bmp_mask = 0xff;
 }

 osd_modify(sd, bmp_mask, clut_index << bmp_shift, bmp_offset);
}
