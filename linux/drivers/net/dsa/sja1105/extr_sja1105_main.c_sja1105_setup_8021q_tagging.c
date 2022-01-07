
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dev; } ;


 int SJA1105_NUM_PORTS ;
 int dev_err (int ,char*,int,int) ;
 int dev_info (int ,char*,char*) ;
 int dsa_port_setup_8021q_tagging (struct dsa_switch*,int,int) ;

__attribute__((used)) static int sja1105_setup_8021q_tagging(struct dsa_switch *ds, bool enabled)
{
 int rc, i;

 for (i = 0; i < SJA1105_NUM_PORTS; i++) {
  rc = dsa_port_setup_8021q_tagging(ds, i, enabled);
  if (rc < 0) {
   dev_err(ds->dev, "Failed to setup VLAN tagging for port %d: %d\n",
    i, rc);
   return rc;
  }
 }
 dev_info(ds->dev, "%s switch tagging\n",
   enabled ? "Enabled" : "Disabled");
 return 0;
}
