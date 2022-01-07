
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r820t_priv {int type; int init_done; } ;


 int r820t_write_reg (struct r820t_priv*,int,int) ;

__attribute__((used)) static int r820t_standby(struct r820t_priv *priv)
{
 int rc;


 if (!priv->init_done)
  return 0;

 rc = r820t_write_reg(priv, 0x06, 0xb1);
 if (rc < 0)
  return rc;
 rc = r820t_write_reg(priv, 0x05, 0x03);
 if (rc < 0)
  return rc;
 rc = r820t_write_reg(priv, 0x07, 0x3a);
 if (rc < 0)
  return rc;
 rc = r820t_write_reg(priv, 0x08, 0x40);
 if (rc < 0)
  return rc;
 rc = r820t_write_reg(priv, 0x09, 0xc0);
 if (rc < 0)
  return rc;
 rc = r820t_write_reg(priv, 0x0a, 0x36);
 if (rc < 0)
  return rc;
 rc = r820t_write_reg(priv, 0x0c, 0x35);
 if (rc < 0)
  return rc;
 rc = r820t_write_reg(priv, 0x0f, 0x68);
 if (rc < 0)
  return rc;
 rc = r820t_write_reg(priv, 0x11, 0x03);
 if (rc < 0)
  return rc;
 rc = r820t_write_reg(priv, 0x17, 0xf4);
 if (rc < 0)
  return rc;
 rc = r820t_write_reg(priv, 0x19, 0x0c);


 priv->type = -1;

 return rc;
}
