
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_private {int dummy; } ;
struct sja1105_port_status {int hl2; int hl1; int mac; } ;


 int sja1105_port_status_get_hl1 (struct sja1105_private*,int *,int) ;
 int sja1105_port_status_get_hl2 (struct sja1105_private*,int *,int) ;
 int sja1105_port_status_get_mac (struct sja1105_private*,int *,int) ;

__attribute__((used)) static int sja1105_port_status_get(struct sja1105_private *priv,
       struct sja1105_port_status *status,
       int port)
{
 int rc;

 rc = sja1105_port_status_get_mac(priv, &status->mac, port);
 if (rc < 0)
  return rc;
 rc = sja1105_port_status_get_hl1(priv, &status->hl1, port);
 if (rc < 0)
  return rc;
 rc = sja1105_port_status_get_hl2(priv, &status->hl2, port);
 if (rc < 0)
  return rc;

 return 0;
}
