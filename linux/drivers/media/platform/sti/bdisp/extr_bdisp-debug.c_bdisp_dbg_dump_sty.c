
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {int dummy; } ;
 int BLT_S1TY_A1_SUBSET ;
 int BLT_S1TY_CHROMA_EXT ;
 int BLT_S1TY_RGB_EXP ;
 int BLT_S3TY_BLANK_ACC ;
 int BLT_TTY_ALPHA_R ;
 int BLT_TTY_BIG_END ;
 int BLT_TTY_COL_MASK ;
 int BLT_TTY_COL_SHIFT ;
 int BLT_TTY_HSO ;
 int BLT_TTY_MB ;
 int BLT_TTY_VSO ;
 int BTL_S1TY_SUBBYTE ;
 int seq_printf (struct seq_file*,char*,...) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void bdisp_dbg_dump_sty(struct seq_file *s,
          u32 val, u32 addr, char *name)
{
 bool s1, s2, s3;

 seq_printf(s, "%s\t0x%08X\t", name, val);

 if (!addr || !name || (strlen(name) < 2))
  goto done;

 s1 = name[strlen(name) - 1] == '1';
 s2 = name[strlen(name) - 1] == '2';
 s3 = name[strlen(name) - 1] == '3';

 seq_printf(s, "Pitch=%d - ", val & 0xFFFF);

 switch ((val & BLT_TTY_COL_MASK) >> BLT_TTY_COL_SHIFT) {
 case 131:
  seq_puts(s, "RGB565 - ");
  break;
 case 130:
  seq_puts(s, "RGB888 - ");
  break;
 case 129:
  seq_puts(s, "xRGB888 - ");
  break;
 case 133:
  seq_puts(s, "ARGB888 - ");
  break;
 case 132:
  seq_puts(s, "NV12 - ");
  break;
 case 128:
  seq_puts(s, "YUV420P - ");
  break;
 default:
  seq_puts(s, "ColorFormat ??? - ");
  break;
 }

 if ((val & BLT_TTY_ALPHA_R) && !s3)
  seq_puts(s, "AlphaRange - ");
 if ((val & BLT_S1TY_A1_SUBSET) && !s3)
  seq_puts(s, "A1SubSet - ");
 if ((val & BLT_TTY_MB) && !s1)
  seq_puts(s, "MB - ");
 if (val & BLT_TTY_HSO)
  seq_puts(s, "HSO inverse - ");
 if (val & BLT_TTY_VSO)
  seq_puts(s, "VSO inverse - ");
 if ((val & BLT_S1TY_CHROMA_EXT) && (s1 || s2))
  seq_puts(s, "ChromaExt - ");
 if ((val & BLT_S3TY_BLANK_ACC) && s3)
  seq_puts(s, "Blank Acc - ");
 if ((val & BTL_S1TY_SUBBYTE) && !s3)
  seq_puts(s, "SubByte - ");
 if ((val & BLT_S1TY_RGB_EXP) && !s3)
  seq_puts(s, "RGBExpand - ");
 if ((val & BLT_TTY_BIG_END) && !s3)
  seq_puts(s, "BigEndian - ");

done:
 seq_putc(s, '\n');
}
