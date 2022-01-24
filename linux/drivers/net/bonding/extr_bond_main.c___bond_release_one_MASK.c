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
struct sockaddr_storage {int /*<<< orphan*/  ss_family; int /*<<< orphan*/  __data; } ;
struct sockaddr {int dummy; } ;
struct slave {int /*<<< orphan*/  original_mtu; TYPE_2__* dev; int /*<<< orphan*/  perm_hwaddr; } ;
struct net_device {int flags; int features; int /*<<< orphan*/  priv_flags; int /*<<< orphan*/  type; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_3__ {scalar_t__ fail_over_mac; } ;
struct bonding {TYPE_1__ params; int /*<<< orphan*/  dev; int /*<<< orphan*/  slave_cnt; int /*<<< orphan*/  curr_active_slave; int /*<<< orphan*/  primary_slave; int /*<<< orphan*/  current_arp_slave; int /*<<< orphan*/  bond_stats; } ;
typedef  int netdev_features_t ;
struct TYPE_4__ {int /*<<< orphan*/  addr_len; } ;

/* Variables and functions */
 scalar_t__ BOND_FOM_ACTIVE ; 
 scalar_t__ FUNC0 (struct bonding*) ; 
 scalar_t__ BOND_MODE_8023AD ; 
 scalar_t__ BOND_MODE_ACTIVEBACKUP ; 
 int /*<<< orphan*/  BOND_SLAVE_NOTIFY_NOW ; 
 int EINVAL ; 
 int IFF_ALLMULTI ; 
 int /*<<< orphan*/  IFF_BONDING ; 
 int IFF_PROMISC ; 
 int IFF_SLAVE ; 
 int /*<<< orphan*/  NETDEV_CHANGEADDR ; 
 int /*<<< orphan*/  NETDEV_RELEASE ; 
 int NETIF_F_VLAN_CHALLENGED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct slave*) ; 
 int /*<<< orphan*/  FUNC5 (struct bonding*,struct slave*) ; 
 int /*<<< orphan*/  FUNC6 (struct bonding*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC8 (struct slave*) ; 
 struct slave* FUNC9 (struct bonding*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,struct net_device*) ; 
 scalar_t__ FUNC14 (struct slave*) ; 
 scalar_t__ FUNC15 (struct bonding*) ; 
 scalar_t__ FUNC16 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC17 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC18 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC19 (struct slave*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct slave*) ; 
 int /*<<< orphan*/  FUNC21 (struct bonding*,struct slave*) ; 
 int /*<<< orphan*/  FUNC22 (struct bonding*,struct slave*) ; 
 int /*<<< orphan*/  FUNC23 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct net_device*,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC30 (struct net_device*) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct net_device*,struct net_device*) ; 
 struct bonding* FUNC33 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC34 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC35 (struct net_device*) ; 
 struct slave* FUNC36 (int /*<<< orphan*/ ) ; 
 struct slave* FUNC37 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (struct net_device*,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC39 (struct slave*) ; 
 int /*<<< orphan*/  FUNC40 (struct net_device*,struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC41 (struct net_device*,struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 () ; 
 int /*<<< orphan*/  FUNC43 () ; 
 int /*<<< orphan*/  FUNC44 (struct net_device*,struct net_device*) ; 

__attribute__((used)) static int FUNC45(struct net_device *bond_dev,
			      struct net_device *slave_dev,
			      bool all, bool unregister)
{
	struct bonding *bond = FUNC33(bond_dev);
	struct slave *slave, *oldcurrent;
	struct sockaddr_storage ss;
	int old_flags = bond_dev->flags;
	netdev_features_t old_features = bond_dev->features;

	/* slave is not a slave or master is not master of this slave */
	if (!(slave_dev->flags & IFF_SLAVE) ||
	    !FUNC32(slave_dev, bond_dev)) {
		FUNC38(bond_dev, slave_dev, "cannot release slave\n");
		return -EINVAL;
	}

	FUNC3();

	slave = FUNC9(bond, slave_dev);
	if (!slave) {
		/* not a slave of this bond */
		FUNC40(bond_dev, slave_dev, "interface not enslaved\n");
		FUNC43();
		return -EINVAL;
	}

	FUNC19(slave, BOND_SLAVE_NOTIFY_NOW);

	FUNC20(slave);

	/* recompute stats just before removing the slave */
	FUNC10(bond->dev, &bond->bond_stats);

	FUNC22(bond, slave);
	/* unregister rx_handler early so bond_handle_frame wouldn't be called
	 * for this slave anymore.
	 */
	FUNC34(slave_dev);

	if (FUNC0(bond) == BOND_MODE_8023AD)
		FUNC4(slave);

	if (FUNC16(bond))
		FUNC21(bond, slave);

	FUNC40(bond_dev, slave_dev, "Releasing %s interface\n",
		    FUNC14(slave) ? "active" : "backup");

	oldcurrent = FUNC36(bond->curr_active_slave);

	FUNC1(bond->current_arp_slave, NULL);

	if (!all && (!bond->params.fail_over_mac ||
		     FUNC0(bond) != BOND_MODE_ACTIVEBACKUP)) {
		if (FUNC31(bond_dev->dev_addr, slave->perm_hwaddr) &&
		    FUNC11(bond))
			FUNC41(bond_dev, slave_dev, "the permanent HWaddr of slave - %pM - is still in use by bond - set the HWaddr of slave to a different address to avoid conflicts\n",
				   slave->perm_hwaddr);
	}

	if (FUNC37(bond->primary_slave) == slave)
		FUNC1(bond->primary_slave, NULL);

	if (oldcurrent == slave)
		FUNC6(bond, NULL);

	if (FUNC15(bond)) {
		/* Must be called only after the slave has been
		 * detached from the list and the curr_active_slave
		 * has been cleared (if our_slave == old_current),
		 * but before a new active slave is selected.
		 */
		FUNC5(bond, slave);
	}

	if (all) {
		FUNC1(bond->curr_active_slave, NULL);
	} else if (oldcurrent == slave) {
		/* Note that we hold RTNL over this sequence, so there
		 * is no concern that another slave add/remove event
		 * will interfere.
		 */
		FUNC17(bond);
	}

	if (!FUNC11(bond)) {
		FUNC18(bond);
		FUNC30(bond_dev);
	}

	FUNC43();
	FUNC42();
	bond->slave_cnt--;

	if (!FUNC11(bond)) {
		FUNC24(NETDEV_CHANGEADDR, bond->dev);
		FUNC24(NETDEV_RELEASE, bond->dev);
	}

	FUNC7(bond);
	if (!(bond_dev->features & NETIF_F_VLAN_CHALLENGED) &&
	    (old_features & NETIF_F_VLAN_CHALLENGED))
		FUNC40(bond_dev, slave_dev, "last VLAN challenged slave left bond - VLAN blocking is removed\n");

	FUNC44(slave_dev, bond_dev);

	/* If the mode uses primary, then this case was handled above by
	 * bond_change_active_slave(..., NULL)
	 */
	if (!FUNC23(bond)) {
		/* unset promiscuity level from slave
		 * NOTE: The NETDEV_CHANGEADDR call above may change the value
		 * of the IFF_PROMISC flag in the bond_dev, but we need the
		 * value of that flag before that change, as that was the value
		 * when this slave was attached, so we cache at the start of the
		 * function and use it here. Same goes for ALLMULTI below
		 */
		if (old_flags & IFF_PROMISC)
			FUNC29(slave_dev, -1);

		/* unset allmulti level from slave */
		if (old_flags & IFF_ALLMULTI)
			FUNC26(slave_dev, -1);

		FUNC13(bond_dev, slave_dev);
	}

	FUNC39(slave);

	/* close slave before restoring its mac address */
	FUNC25(slave_dev);

	if (bond->params.fail_over_mac != BOND_FOM_ACTIVE ||
	    FUNC0(bond) != BOND_MODE_ACTIVEBACKUP) {
		/* restore original ("permanent") mac address */
		FUNC12(ss.__data, slave->perm_hwaddr,
				  slave->dev->addr_len);
		ss.ss_family = slave_dev->type;
		FUNC27(slave_dev, (struct sockaddr *)&ss, NULL);
	}

	if (unregister)
		FUNC2(slave_dev, slave->original_mtu);
	else
		FUNC28(slave_dev, slave->original_mtu);

	if (!FUNC35(slave_dev))
		slave_dev->priv_flags &= ~IFF_BONDING;

	FUNC8(slave);

	return 0;
}