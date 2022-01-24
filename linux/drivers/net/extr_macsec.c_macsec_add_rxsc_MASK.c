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
struct net_device {int active; } ;
struct macsec_rx_sc {int active; } ;
struct genl_info {struct nlattr** attrs; } ;
typedef  int /*<<< orphan*/  sci_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 size_t MACSEC_ATTR_IFINDEX ; 
 size_t MACSEC_RXSC_ATTR_ACTIVE ; 
 int /*<<< orphan*/  MACSEC_RXSC_ATTR_MAX ; 
 size_t MACSEC_RXSC_ATTR_SCI ; 
 int /*<<< orphan*/  MACSEC_UNDEF_SCI ; 
 int FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct genl_info*) ; 
 struct net_device* FUNC4 (int /*<<< orphan*/ ,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC6 (struct nlattr*) ; 
 scalar_t__ FUNC7 (struct nlattr**,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct nlattr**) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct genl_info *info)
{
	struct net_device *dev;
	sci_t sci = MACSEC_UNDEF_SCI;
	struct nlattr **attrs = info->attrs;
	struct macsec_rx_sc *rx_sc;
	struct nlattr *tb_rxsc[MACSEC_RXSC_ATTR_MAX + 1];

	if (!attrs[MACSEC_ATTR_IFINDEX])
		return -EINVAL;

	if (FUNC7(attrs, tb_rxsc))
		return -EINVAL;

	if (!FUNC10(tb_rxsc))
		return -EINVAL;

	FUNC8();
	dev = FUNC4(FUNC3(info), attrs);
	if (FUNC0(dev)) {
		FUNC9();
		return FUNC1(dev);
	}

	sci = FUNC5(tb_rxsc[MACSEC_RXSC_ATTR_SCI]);

	rx_sc = FUNC2(dev, sci);
	if (FUNC0(rx_sc)) {
		FUNC9();
		return FUNC1(rx_sc);
	}

	if (tb_rxsc[MACSEC_RXSC_ATTR_ACTIVE])
		rx_sc->active = !!FUNC6(tb_rxsc[MACSEC_RXSC_ATTR_ACTIVE]);

	FUNC9();

	return 0;
}