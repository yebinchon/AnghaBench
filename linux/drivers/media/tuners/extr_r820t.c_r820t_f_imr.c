
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r820t_sect_type {int dummy; } ;
struct r820t_priv {int dummy; } ;


 int r820t_section (struct r820t_priv*,struct r820t_sect_type*) ;
 int r820t_vga_adjust (struct r820t_priv*) ;

__attribute__((used)) static int r820t_f_imr(struct r820t_priv *priv, struct r820t_sect_type *iq_pont)
{
 int rc;

 r820t_vga_adjust(priv);





 rc = r820t_section(priv, iq_pont);
 if (rc < 0)
  return rc;

 return 0;
}
