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
struct macsec_tx_sc {int /*<<< orphan*/ * sa; } ;
struct macsec_tx_sa {scalar_t__ active; } ;
struct macsec_secy {int dummy; } ;
struct genl_info {struct nlattr** attrs; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct macsec_tx_sa*) ; 
 size_t MACSEC_ATTR_IFINDEX ; 
 int /*<<< orphan*/  MACSEC_SA_ATTR_MAX ; 
 int FUNC1 (struct macsec_tx_sa*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct macsec_tx_sa*) ; 
 int /*<<< orphan*/  FUNC4 (struct genl_info*) ; 
 struct macsec_tx_sa* FUNC5 (int /*<<< orphan*/ ,struct nlattr**,struct nlattr**,struct net_device**,struct macsec_secy**,struct macsec_tx_sc**,size_t*) ; 
 scalar_t__ FUNC6 (struct nlattr**,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct genl_info *info)
{
	struct nlattr **attrs = info->attrs;
	struct net_device *dev;
	struct macsec_secy *secy;
	struct macsec_tx_sc *tx_sc;
	struct macsec_tx_sa *tx_sa;
	u8 assoc_num;
	struct nlattr *tb_sa[MACSEC_SA_ATTR_MAX + 1];

	if (!attrs[MACSEC_ATTR_IFINDEX])
		return -EINVAL;

	if (FUNC6(attrs, tb_sa))
		return -EINVAL;

	FUNC7();
	tx_sa = FUNC5(FUNC4(info), attrs, tb_sa,
				 &dev, &secy, &tx_sc, &assoc_num);
	if (FUNC0(tx_sa)) {
		FUNC8();
		return FUNC1(tx_sa);
	}

	if (tx_sa->active) {
		FUNC8();
		return -EBUSY;
	}

	FUNC2(tx_sc->sa[assoc_num], NULL);
	FUNC3(tx_sa);

	FUNC8();

	return 0;
}