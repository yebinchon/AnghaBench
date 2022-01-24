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
typedef  scalar_t__ u8 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct macsec_tx_sc {scalar_t__ encoding_sa; } ;
struct macsec_tx_sa {int /*<<< orphan*/  active; int /*<<< orphan*/  lock; int /*<<< orphan*/  next_pn; } ;
struct macsec_secy {int /*<<< orphan*/  operational; } ;
struct genl_info {struct nlattr** attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct macsec_tx_sa*) ; 
 size_t MACSEC_ATTR_IFINDEX ; 
 size_t MACSEC_SA_ATTR_ACTIVE ; 
 int /*<<< orphan*/  MACSEC_SA_ATTR_MAX ; 
 size_t MACSEC_SA_ATTR_PN ; 
 int FUNC1 (struct macsec_tx_sa*) ; 
 int /*<<< orphan*/  FUNC2 (struct genl_info*) ; 
 struct macsec_tx_sa* FUNC3 (int /*<<< orphan*/ ,struct nlattr**,struct nlattr**,struct net_device**,struct macsec_secy**,struct macsec_tx_sc**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr*) ; 
 scalar_t__ FUNC6 (struct nlattr**,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct nlattr**) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, struct genl_info *info)
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

	if (!FUNC11(tb_sa))
		return -EINVAL;

	FUNC7();
	tx_sa = FUNC3(FUNC2(info), attrs, tb_sa,
				 &dev, &secy, &tx_sc, &assoc_num);
	if (FUNC0(tx_sa)) {
		FUNC8();
		return FUNC1(tx_sa);
	}

	if (tb_sa[MACSEC_SA_ATTR_PN]) {
		FUNC9(&tx_sa->lock);
		tx_sa->next_pn = FUNC4(tb_sa[MACSEC_SA_ATTR_PN]);
		FUNC10(&tx_sa->lock);
	}

	if (tb_sa[MACSEC_SA_ATTR_ACTIVE])
		tx_sa->active = FUNC5(tb_sa[MACSEC_SA_ATTR_ACTIVE]);

	if (assoc_num == tx_sc->encoding_sa)
		secy->operational = tx_sa->active;

	FUNC8();

	return 0;
}