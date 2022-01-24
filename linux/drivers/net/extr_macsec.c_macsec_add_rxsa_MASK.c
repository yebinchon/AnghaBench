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
struct macsec_secy {scalar_t__ key_len; int /*<<< orphan*/  icv_len; } ;
struct macsec_rx_sc {int /*<<< orphan*/ * sa; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct macsec_rx_sa {int active; struct macsec_rx_sc* sc; TYPE_1__ key; int /*<<< orphan*/  lock; int /*<<< orphan*/  next_pn; } ;
struct genl_info {struct nlattr** attrs; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct macsec_rx_sc*) ; 
 size_t MACSEC_ATTR_IFINDEX ; 
 int /*<<< orphan*/  MACSEC_KEYID_LEN ; 
 int /*<<< orphan*/  MACSEC_RXSC_ATTR_MAX ; 
 size_t MACSEC_SA_ATTR_ACTIVE ; 
 size_t MACSEC_SA_ATTR_AN ; 
 size_t MACSEC_SA_ATTR_KEY ; 
 size_t MACSEC_SA_ATTR_KEYID ; 
 int /*<<< orphan*/  MACSEC_SA_ATTR_MAX ; 
 size_t MACSEC_SA_ATTR_PN ; 
 int FUNC1 (struct macsec_rx_sc*) ; 
 int /*<<< orphan*/  FUNC2 (struct genl_info*) ; 
 struct macsec_rx_sc* FUNC3 (int /*<<< orphan*/ ,struct nlattr**,struct nlattr**,struct net_device**,struct macsec_secy**) ; 
 int FUNC4 (struct macsec_rx_sa*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct macsec_rx_sa*) ; 
 struct macsec_rx_sa* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC8 (struct nlattr*) ; 
 unsigned char FUNC9 (struct nlattr*) ; 
 scalar_t__ FUNC10 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct nlattr**,struct nlattr**) ; 
 scalar_t__ FUNC13 (struct nlattr**,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC14 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct macsec_rx_sa*) ; 
 struct macsec_rx_sa* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct nlattr**) ; 

__attribute__((used)) static int FUNC22(struct sk_buff *skb, struct genl_info *info)
{
	struct net_device *dev;
	struct nlattr **attrs = info->attrs;
	struct macsec_secy *secy;
	struct macsec_rx_sc *rx_sc;
	struct macsec_rx_sa *rx_sa;
	unsigned char assoc_num;
	struct nlattr *tb_rxsc[MACSEC_RXSC_ATTR_MAX + 1];
	struct nlattr *tb_sa[MACSEC_SA_ATTR_MAX + 1];
	int err;

	if (!attrs[MACSEC_ATTR_IFINDEX])
		return -EINVAL;

	if (FUNC13(attrs, tb_sa))
		return -EINVAL;

	if (FUNC12(attrs, tb_rxsc))
		return -EINVAL;

	if (!FUNC21(tb_sa))
		return -EINVAL;

	FUNC17();
	rx_sc = FUNC3(FUNC2(info), attrs, tb_rxsc, &dev, &secy);
	if (FUNC0(rx_sc)) {
		FUNC18();
		return FUNC1(rx_sc);
	}

	assoc_num = FUNC9(tb_sa[MACSEC_SA_ATTR_AN]);

	if (FUNC10(tb_sa[MACSEC_SA_ATTR_KEY]) != secy->key_len) {
		FUNC14("macsec: nl: add_rxsa: bad key length: %d != %d\n",
			  FUNC10(tb_sa[MACSEC_SA_ATTR_KEY]), secy->key_len);
		FUNC18();
		return -EINVAL;
	}

	rx_sa = FUNC16(rx_sc->sa[assoc_num]);
	if (rx_sa) {
		FUNC18();
		return -EBUSY;
	}

	rx_sa = FUNC6(sizeof(*rx_sa), GFP_KERNEL);
	if (!rx_sa) {
		FUNC18();
		return -ENOMEM;
	}

	err = FUNC4(rx_sa, FUNC7(tb_sa[MACSEC_SA_ATTR_KEY]),
			 secy->key_len, secy->icv_len);
	if (err < 0) {
		FUNC5(rx_sa);
		FUNC18();
		return err;
	}

	if (tb_sa[MACSEC_SA_ATTR_PN]) {
		FUNC19(&rx_sa->lock);
		rx_sa->next_pn = FUNC8(tb_sa[MACSEC_SA_ATTR_PN]);
		FUNC20(&rx_sa->lock);
	}

	if (tb_sa[MACSEC_SA_ATTR_ACTIVE])
		rx_sa->active = !!FUNC9(tb_sa[MACSEC_SA_ATTR_ACTIVE]);

	FUNC11(rx_sa->key.id, tb_sa[MACSEC_SA_ATTR_KEYID], MACSEC_KEYID_LEN);
	rx_sa->sc = rx_sc;
	FUNC15(rx_sc->sa[assoc_num], rx_sa);

	FUNC18();

	return 0;
}