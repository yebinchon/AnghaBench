
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_private {int dummy; } ;
struct sja1105_dt_port {int dummy; } ;
struct dsa_switch {int vlan_filtering_is_global; int num_tx_queues; int dev; struct sja1105_private* priv; } ;


 int SJA1105_NUM_PORTS ;
 int SJA1105_NUM_TC ;
 int dev_err (int ,char*,...) ;
 int sja1105_clocking_setup (struct sja1105_private*) ;
 int sja1105_parse_dt (struct sja1105_private*,struct sja1105_dt_port*) ;
 int sja1105_parse_rgmii_delays (struct sja1105_private*,struct sja1105_dt_port*) ;
 int sja1105_ptp_clock_register (struct sja1105_private*) ;
 int sja1105_setup_8021q_tagging (struct dsa_switch*,int) ;
 int sja1105_static_config_load (struct sja1105_private*,struct sja1105_dt_port*) ;

__attribute__((used)) static int sja1105_setup(struct dsa_switch *ds)
{
 struct sja1105_dt_port ports[SJA1105_NUM_PORTS];
 struct sja1105_private *priv = ds->priv;
 int rc;

 rc = sja1105_parse_dt(priv, ports);
 if (rc < 0) {
  dev_err(ds->dev, "Failed to parse DT: %d\n", rc);
  return rc;
 }




 rc = sja1105_parse_rgmii_delays(priv, ports);
 if (rc < 0) {
  dev_err(ds->dev, "RGMII delay not supported\n");
  return rc;
 }

 rc = sja1105_ptp_clock_register(priv);
 if (rc < 0) {
  dev_err(ds->dev, "Failed to register PTP clock: %d\n", rc);
  return rc;
 }

 rc = sja1105_static_config_load(priv, ports);
 if (rc < 0) {
  dev_err(ds->dev, "Failed to load static config: %d\n", rc);
  return rc;
 }

 rc = sja1105_clocking_setup(priv);
 if (rc < 0) {
  dev_err(ds->dev, "Failed to configure MII clocking: %d\n", rc);
  return rc;
 }
 ds->vlan_filtering_is_global = 1;


 ds->num_tx_queues = SJA1105_NUM_TC;





 return sja1105_setup_8021q_tagging(ds, 1);
}
