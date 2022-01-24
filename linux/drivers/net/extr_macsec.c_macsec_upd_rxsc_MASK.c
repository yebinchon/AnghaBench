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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct macsec_secy {int n_rx_sc; } ;
struct macsec_rx_sc {int active; } ;
struct genl_info {struct nlattr** attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct macsec_rx_sc*) ; 
 size_t MACSEC_ATTR_IFINDEX ; 
 size_t MACSEC_RXSC_ATTR_ACTIVE ; 
 int /*<<< orphan*/  MACSEC_RXSC_ATTR_MAX ; 
 int FUNC1 (struct macsec_rx_sc*) ; 
 int /*<<< orphan*/  FUNC2 (struct genl_info*) ; 
 struct macsec_rx_sc* FUNC3 (int /*<<< orphan*/ ,struct nlattr**,struct nlattr**,struct net_device**,struct macsec_secy**) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr*) ; 
 scalar_t__ FUNC5 (struct nlattr**,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct nlattr**) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct genl_info *info)
{
	struct nlattr **attrs = info->attrs;
	struct net_device *dev;
	struct macsec_secy *secy;
	struct macsec_rx_sc *rx_sc;
	struct nlattr *tb_rxsc[MACSEC_RXSC_ATTR_MAX + 1];

	if (!attrs[MACSEC_ATTR_IFINDEX])
		return -EINVAL;

	if (FUNC5(attrs, tb_rxsc))
		return -EINVAL;

	if (!FUNC8(tb_rxsc))
		return -EINVAL;

	FUNC6();
	rx_sc = FUNC3(FUNC2(info), attrs, tb_rxsc, &dev, &secy);
	if (FUNC0(rx_sc)) {
		FUNC7();
		return FUNC1(rx_sc);
	}

	if (tb_rxsc[MACSEC_RXSC_ATTR_ACTIVE]) {
		bool new = !!FUNC4(tb_rxsc[MACSEC_RXSC_ATTR_ACTIVE]);

		if (rx_sc->active != new)
			secy->n_rx_sc += new ? 1 : -1;

		rx_sc->active = new;
	}

	FUNC7();

	return 0;
}