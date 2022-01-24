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
typedef  size_t u8 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct macsec_secy {int dummy; } ;
struct macsec_rx_sc {int /*<<< orphan*/ * sa; } ;
struct macsec_rx_sa {scalar_t__ active; } ;
struct genl_info {struct nlattr** attrs; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct macsec_rx_sa*) ; 
 size_t MACSEC_ATTR_IFINDEX ; 
 int /*<<< orphan*/  MACSEC_RXSC_ATTR_MAX ; 
 int /*<<< orphan*/  MACSEC_SA_ATTR_MAX ; 
 int FUNC1 (struct macsec_rx_sa*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct macsec_rx_sa*) ; 
 int /*<<< orphan*/  FUNC4 (struct genl_info*) ; 
 struct macsec_rx_sa* FUNC5 (int /*<<< orphan*/ ,struct nlattr**,struct nlattr**,struct nlattr**,struct net_device**,struct macsec_secy**,struct macsec_rx_sc**,size_t*) ; 
 scalar_t__ FUNC6 (struct nlattr**,struct nlattr**) ; 
 scalar_t__ FUNC7 (struct nlattr**,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct genl_info *info)
{
	struct nlattr **attrs = info->attrs;
	struct net_device *dev;
	struct macsec_secy *secy;
	struct macsec_rx_sc *rx_sc;
	struct macsec_rx_sa *rx_sa;
	u8 assoc_num;
	struct nlattr *tb_rxsc[MACSEC_RXSC_ATTR_MAX + 1];
	struct nlattr *tb_sa[MACSEC_SA_ATTR_MAX + 1];

	if (!attrs[MACSEC_ATTR_IFINDEX])
		return -EINVAL;

	if (FUNC7(attrs, tb_sa))
		return -EINVAL;

	if (FUNC6(attrs, tb_rxsc))
		return -EINVAL;

	FUNC8();
	rx_sa = FUNC5(FUNC4(info), attrs, tb_rxsc, tb_sa,
				 &dev, &secy, &rx_sc, &assoc_num);
	if (FUNC0(rx_sa)) {
		FUNC9();
		return FUNC1(rx_sa);
	}

	if (rx_sa->active) {
		FUNC9();
		return -EBUSY;
	}

	FUNC2(rx_sc->sa[assoc_num], NULL);
	FUNC3(rx_sa);

	FUNC9();

	return 0;
}