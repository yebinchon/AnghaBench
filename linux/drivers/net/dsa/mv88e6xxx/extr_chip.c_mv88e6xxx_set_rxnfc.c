
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_policy {int action; } ;
struct mv88e6xxx_chip {int dev; int policies; } ;
struct ethtool_rx_flow_spec {int location; } ;
struct ethtool_rxnfc {int cmd; struct ethtool_rx_flow_spec fs; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;


 int ENOENT ;
 int EOPNOTSUPP ;


 int MV88E6XXX_POLICY_ACTION_NORMAL ;
 int devm_kfree (int ,struct mv88e6xxx_policy*) ;
 struct mv88e6xxx_policy* idr_remove (int *,int ) ;
 int mv88e6xxx_policy_apply (struct mv88e6xxx_chip*,int,struct mv88e6xxx_policy*) ;
 int mv88e6xxx_policy_insert (struct mv88e6xxx_chip*,int,struct ethtool_rx_flow_spec*) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;

__attribute__((used)) static int mv88e6xxx_set_rxnfc(struct dsa_switch *ds, int port,
          struct ethtool_rxnfc *rxnfc)
{
 struct ethtool_rx_flow_spec *fs = &rxnfc->fs;
 struct mv88e6xxx_chip *chip = ds->priv;
 struct mv88e6xxx_policy *policy;
 int err;

 mv88e6xxx_reg_lock(chip);

 switch (rxnfc->cmd) {
 case 128:
  err = mv88e6xxx_policy_insert(chip, port, fs);
  break;
 case 129:
  err = -ENOENT;
  policy = idr_remove(&chip->policies, fs->location);
  if (policy) {
   policy->action = MV88E6XXX_POLICY_ACTION_NORMAL;
   err = mv88e6xxx_policy_apply(chip, port, policy);
   devm_kfree(chip->dev, policy);
  }
  break;
 default:
  err = -EOPNOTSUPP;
  break;
 }

 mv88e6xxx_reg_unlock(chip);

 return err;
}
