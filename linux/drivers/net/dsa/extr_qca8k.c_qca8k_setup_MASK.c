#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct qca8k_priv {TYPE_2__* port_sts; int /*<<< orphan*/  regmap; int /*<<< orphan*/  reg_mutex; } ;
struct dsa_switch {TYPE_1__* ports; int /*<<< orphan*/  dev; scalar_t__ priv; } ;
struct TYPE_4__ {int enabled; } ;
struct TYPE_3__ {int /*<<< orphan*/  dn; } ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t QCA8K_CPU_PORT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  QCA8K_GLOBAL_FW_CTRL0_CPU_PORT_EN ; 
 int QCA8K_GLOBAL_FW_CTRL1_BC_DP_S ; 
 int QCA8K_GLOBAL_FW_CTRL1_IGMP_DP_S ; 
 int QCA8K_GLOBAL_FW_CTRL1_MC_DP_S ; 
 int QCA8K_GLOBAL_FW_CTRL1_UC_DP_S ; 
 int QCA8K_NUM_PORTS ; 
 int QCA8K_PORT_HDR_CTRL_ALL ; 
 int QCA8K_PORT_HDR_CTRL_RX_S ; 
 int QCA8K_PORT_HDR_CTRL_TX_S ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  QCA8K_PORT_LOOKUP_LEARN ; 
 int QCA8K_PORT_LOOKUP_MEMBER ; 
 int QCA8K_PORT_STATUS_DUPLEX ; 
 int QCA8K_PORT_STATUS_RXFLOW ; 
 int QCA8K_PORT_STATUS_SPEED_1000 ; 
 int QCA8K_PORT_STATUS_TXFLOW ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  QCA8K_REG_GLOBAL_FW_CTRL0 ; 
 int /*<<< orphan*/  QCA8K_REG_GLOBAL_FW_CTRL1 ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct qca8k_priv*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct dsa_switch*,int) ; 
 scalar_t__ FUNC11 (struct dsa_switch*,int) ; 
 int FUNC12 (struct dsa_switch*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (struct qca8k_priv*) ; 
 int /*<<< orphan*/  FUNC18 (struct qca8k_priv*) ; 
 int /*<<< orphan*/  FUNC19 (struct qca8k_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct qca8k_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qca8k_regmap_config ; 
 int /*<<< orphan*/  FUNC21 (struct qca8k_priv*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC22 (struct qca8k_priv*,size_t,int) ; 
 int FUNC23 (struct qca8k_priv*) ; 
 int /*<<< orphan*/  FUNC24 (struct qca8k_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC25(struct dsa_switch *ds)
{
	struct qca8k_priv *priv = (struct qca8k_priv *)ds->priv;
	int ret, i, phy_mode = -1;
	u32 mask;

	/* Make sure that port 0 is the cpu port */
	if (!FUNC10(ds, 0)) {
		FUNC15("port 0 is not the CPU port\n");
		return -EINVAL;
	}

	FUNC13(&priv->reg_mutex);

	/* Start by setting up the register mapping */
	priv->regmap = FUNC9(ds->dev, NULL, priv,
					&qca8k_regmap_config);
	if (FUNC1(priv->regmap))
		FUNC16("regmap initialization failed");

	ret = FUNC23(priv);
	if (ret)
		return ret;

	/* Initialize CPU port pad mode (xMII type, delays...) */
	phy_mode = FUNC14(ds->ports[QCA8K_CPU_PORT].dn);
	if (phy_mode < 0) {
		FUNC15("Can't find phy-mode for master device\n");
		return phy_mode;
	}
	ret = FUNC22(priv, QCA8K_CPU_PORT, phy_mode);
	if (ret < 0)
		return ret;

	/* Enable CPU Port, force it to maximum bandwidth and full-duplex */
	mask = QCA8K_PORT_STATUS_SPEED_1000 | QCA8K_PORT_STATUS_TXFLOW |
	       QCA8K_PORT_STATUS_RXFLOW | QCA8K_PORT_STATUS_DUPLEX;
	FUNC24(priv, FUNC7(QCA8K_CPU_PORT), mask);
	FUNC20(priv, QCA8K_REG_GLOBAL_FW_CTRL0,
		      QCA8K_GLOBAL_FW_CTRL0_CPU_PORT_EN);
	FUNC19(priv, QCA8K_CPU_PORT, 1);
	priv->port_sts[QCA8K_CPU_PORT].enabled = 1;

	/* Enable MIB counters */
	FUNC18(priv);

	/* Enable QCA header mode on the cpu port */
	FUNC24(priv, FUNC6(QCA8K_CPU_PORT),
		    QCA8K_PORT_HDR_CTRL_ALL << QCA8K_PORT_HDR_CTRL_TX_S |
		    QCA8K_PORT_HDR_CTRL_ALL << QCA8K_PORT_HDR_CTRL_RX_S);

	/* Disable forwarding by default on all ports */
	for (i = 0; i < QCA8K_NUM_PORTS; i++)
		FUNC21(priv, FUNC3(i),
			  QCA8K_PORT_LOOKUP_MEMBER, 0);

	/* Disable MAC by default on all user ports */
	for (i = 1; i < QCA8K_NUM_PORTS; i++)
		if (FUNC11(ds, i))
			FUNC19(priv, i, 0);

	/* Forward all unknown frames to CPU port for Linux processing */
	FUNC24(priv, QCA8K_REG_GLOBAL_FW_CTRL1,
		    FUNC0(0) << QCA8K_GLOBAL_FW_CTRL1_IGMP_DP_S |
		    FUNC0(0) << QCA8K_GLOBAL_FW_CTRL1_BC_DP_S |
		    FUNC0(0) << QCA8K_GLOBAL_FW_CTRL1_MC_DP_S |
		    FUNC0(0) << QCA8K_GLOBAL_FW_CTRL1_UC_DP_S);

	/* Setup connection between CPU port & user ports */
	for (i = 0; i < QCA8K_NUM_PORTS; i++) {
		/* CPU port gets connected to all user ports of the switch */
		if (FUNC10(ds, i)) {
			FUNC21(priv, FUNC3(QCA8K_CPU_PORT),
				  QCA8K_PORT_LOOKUP_MEMBER, FUNC12(ds));
		}

		/* Invividual user ports get connected to CPU port only */
		if (FUNC11(ds, i)) {
			int shift = 16 * (i % 2);

			FUNC21(priv, FUNC3(i),
				  QCA8K_PORT_LOOKUP_MEMBER,
				  FUNC0(QCA8K_CPU_PORT));

			/* Enable ARP Auto-learning by default */
			FUNC20(priv, FUNC3(i),
				      QCA8K_PORT_LOOKUP_LEARN);

			/* For port based vlans to work we need to set the
			 * default egress vid
			 */
			FUNC21(priv, FUNC2(i),
				  0xffff << shift, 1 << shift);
			FUNC24(priv, FUNC8(i),
				    FUNC4(1) |
				    FUNC5(1));
		}
	}

	/* Flush the FDB table */
	FUNC17(priv);

	return 0;
}