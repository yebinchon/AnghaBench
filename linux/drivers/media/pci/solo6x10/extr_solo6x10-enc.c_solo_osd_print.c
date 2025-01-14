
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct solo_enc_dev {int* osd_text; int* osd_buf; int ch; struct solo_dev* solo_dev; } ;
struct solo_dev {int dummy; } ;
struct font_desc {scalar_t__ data; } ;


 int ENODEV ;
 int SOLO_EOSD_EXT_ADDR_CHAN (struct solo_dev*,int) ;
 int SOLO_OSD_WRITE_SIZE ;
 int SOLO_VE_OSD_CH ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int bitrev8 (int const) ;
 struct font_desc* find_font (char*) ;
 int memset (int*,int ,int ) ;
 int solo_p2m_dma (struct solo_dev*,int,int*,int ,int ,int ,int ) ;
 int solo_reg_read (struct solo_dev*,int ) ;
 int solo_reg_write (struct solo_dev*,int ,int) ;

int solo_osd_print(struct solo_enc_dev *solo_enc)
{
 struct solo_dev *solo_dev = solo_enc->solo_dev;
 u8 *str = solo_enc->osd_text;
 u8 *buf = solo_enc->osd_buf;
 u32 reg;
 const struct font_desc *vga = find_font("VGA8x16");
 const u8 *vga_data;
 int i, j;

 if (WARN_ON_ONCE(!vga))
  return -ENODEV;

 reg = solo_reg_read(solo_dev, SOLO_VE_OSD_CH);
 if (!*str) {

  reg &= ~(1 << solo_enc->ch);
  goto out;
 }

 memset(buf, 0, SOLO_OSD_WRITE_SIZE);
 vga_data = (const u8 *)vga->data;

 for (i = 0; *str; i++, str++) {
  for (j = 0; j < 16; j++) {
   buf[(j << 1) | (i & 1) | ((i & ~1) << 4)] =
       bitrev8(vga_data[(*str << 4) | j]);
  }
 }

 solo_p2m_dma(solo_dev, 1, buf,
       SOLO_EOSD_EXT_ADDR_CHAN(solo_dev, solo_enc->ch),
       SOLO_OSD_WRITE_SIZE, 0, 0);


 reg |= (1 << solo_enc->ch);

out:
 solo_reg_write(solo_dev, SOLO_VE_OSD_CH, reg);
 return 0;
}
