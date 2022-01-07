
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6060_priv {struct dsa_switch* ds; } ;
struct dsa_switch {struct mv88e6060_priv* priv; } ;


 int MV88E6060_PORTS ;
 int mv88e6060_setup_addr (struct mv88e6060_priv*) ;
 int mv88e6060_setup_global (struct mv88e6060_priv*) ;
 int mv88e6060_setup_port (struct mv88e6060_priv*,int) ;
 int mv88e6060_switch_reset (struct mv88e6060_priv*) ;

__attribute__((used)) static int mv88e6060_setup(struct dsa_switch *ds)
{
 struct mv88e6060_priv *priv = ds->priv;
 int ret;
 int i;

 priv->ds = ds;

 ret = mv88e6060_switch_reset(priv);
 if (ret < 0)
  return ret;



 ret = mv88e6060_setup_global(priv);
 if (ret < 0)
  return ret;

 ret = mv88e6060_setup_addr(priv);
 if (ret < 0)
  return ret;

 for (i = 0; i < MV88E6060_PORTS; i++) {
  ret = mv88e6060_setup_port(priv, i);
  if (ret < 0)
   return ret;
 }

 return 0;
}
