#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct macsec_secy {int dummy; } ;
struct macsec_rx_sc {int dummy; } ;
struct genl_info {struct nlattr** attrs; } ;
typedef  int /*<<< orphan*/  sci_t ;
struct TYPE_2__ {struct macsec_secy secy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 size_t MACSEC_ATTR_IFINDEX ; 
 int /*<<< orphan*/  MACSEC_RXSC_ATTR_MAX ; 
 size_t MACSEC_RXSC_ATTR_SCI ; 
 int FUNC1 (struct net_device*) ; 
 struct macsec_rx_sc* FUNC2 (struct macsec_secy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct macsec_rx_sc*) ; 
 int /*<<< orphan*/  FUNC4 (struct genl_info*) ; 
 struct net_device* FUNC5 (int /*<<< orphan*/ ,struct nlattr**) ; 
 TYPE_1__* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr*) ; 
 scalar_t__ FUNC8 (struct nlattr**,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct genl_info *info)
{
	struct nlattr **attrs = info->attrs;
	struct net_device *dev;
	struct macsec_secy *secy;
	struct macsec_rx_sc *rx_sc;
	sci_t sci;
	struct nlattr *tb_rxsc[MACSEC_RXSC_ATTR_MAX + 1];

	if (!attrs[MACSEC_ATTR_IFINDEX])
		return -EINVAL;

	if (FUNC8(attrs, tb_rxsc))
		return -EINVAL;

	if (!tb_rxsc[MACSEC_RXSC_ATTR_SCI])
		return -EINVAL;

	FUNC9();
	dev = FUNC5(FUNC4(info), info->attrs);
	if (FUNC0(dev)) {
		FUNC10();
		return FUNC1(dev);
	}

	secy = &FUNC6(dev)->secy;
	sci = FUNC7(tb_rxsc[MACSEC_RXSC_ATTR_SCI]);

	rx_sc = FUNC2(secy, sci);
	if (!rx_sc) {
		FUNC10();
		return -ENODEV;
	}

	FUNC3(rx_sc);
	FUNC10();

	return 0;
}