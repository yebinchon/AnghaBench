
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encx24j600_priv {int dummy; } ;


 int MAADR1 ;
 int MAADR2 ;
 int MAADR3 ;
 unsigned short encx24j600_read_reg (struct encx24j600_priv*,int ) ;

__attribute__((used)) static void encx24j600_hw_get_macaddr(struct encx24j600_priv *priv,
          unsigned char *ethaddr)
{
 unsigned short val;

 val = encx24j600_read_reg(priv, MAADR1);

 ethaddr[0] = val & 0x00ff;
 ethaddr[1] = (val & 0xff00) >> 8;

 val = encx24j600_read_reg(priv, MAADR2);

 ethaddr[2] = val & 0x00ffU;
 ethaddr[3] = (val & 0xff00U) >> 8;

 val = encx24j600_read_reg(priv, MAADR3);

 ethaddr[4] = val & 0x00ffU;
 ethaddr[5] = (val & 0xff00U) >> 8;
}
