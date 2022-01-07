
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r820t_priv {int dummy; } ;


 int r820t_multi_read (struct r820t_priv*) ;
 int r820t_write_reg_mask (struct r820t_priv*,int,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int r820t_vga_adjust(struct r820t_priv *priv)
{
 int rc;
 u8 vga_count;


 for (vga_count = 12; vga_count < 16; vga_count++) {
  rc = r820t_write_reg_mask(priv, 0x0c, vga_count, 0x0f);
  if (rc < 0)
   return rc;

  usleep_range(10000, 11000);

  rc = r820t_multi_read(priv);
  if (rc < 0)
   return rc;

  if (rc > 40 * 4)
   break;
 }

 return 0;
}
