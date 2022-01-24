#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mv88e6xxx_policy {int /*<<< orphan*/  action; } ;
struct mv88e6xxx_chip {int /*<<< orphan*/  dev; int /*<<< orphan*/  policies; } ;
struct ethtool_rx_flow_spec {int /*<<< orphan*/  location; } ;
struct ethtool_rxnfc {int cmd; struct ethtool_rx_flow_spec fs; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;

/* Variables and functions */
 int ENOENT ; 
 int EOPNOTSUPP ; 
#define  ETHTOOL_SRXCLSRLDEL 129 
#define  ETHTOOL_SRXCLSRLINS 128 
 int /*<<< orphan*/  MV88E6XXX_POLICY_ACTION_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mv88e6xxx_policy*) ; 
 struct mv88e6xxx_policy* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int,struct mv88e6xxx_policy*) ; 
 int FUNC3 (struct mv88e6xxx_chip*,int,struct ethtool_rx_flow_spec*) ; 
 int /*<<< orphan*/  FUNC4 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct mv88e6xxx_chip*) ; 

__attribute__((used)) static int FUNC6(struct dsa_switch *ds, int port,
			       struct ethtool_rxnfc *rxnfc)
{
	struct ethtool_rx_flow_spec *fs = &rxnfc->fs;
	struct mv88e6xxx_chip *chip = ds->priv;
	struct mv88e6xxx_policy *policy;
	int err;

	FUNC4(chip);

	switch (rxnfc->cmd) {
	case ETHTOOL_SRXCLSRLINS:
		err = FUNC3(chip, port, fs);
		break;
	case ETHTOOL_SRXCLSRLDEL:
		err = -ENOENT;
		policy = FUNC1(&chip->policies, fs->location);
		if (policy) {
			policy->action = MV88E6XXX_POLICY_ACTION_NORMAL;
			err = FUNC2(chip, port, policy);
			FUNC0(chip->dev, policy);
		}
		break;
	default:
		err = -EOPNOTSUPP;
		break;
	}

	FUNC5(chip);

	return err;
}