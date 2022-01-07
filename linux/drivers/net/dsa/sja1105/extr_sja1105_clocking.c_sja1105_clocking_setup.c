
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_private {int dummy; } ;


 int SJA1105_NUM_PORTS ;
 int sja1105_clocking_setup_port (struct sja1105_private*,int) ;

int sja1105_clocking_setup(struct sja1105_private *priv)
{
 int port, rc;

 for (port = 0; port < SJA1105_NUM_PORTS; port++) {
  rc = sja1105_clocking_setup_port(priv, port);
  if (rc < 0)
   return rc;
 }
 return 0;
}
