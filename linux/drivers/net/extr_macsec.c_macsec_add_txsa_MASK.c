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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct macsec_tx_sc {unsigned char encoding_sa; int /*<<< orphan*/ * sa; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
struct macsec_tx_sa {int active; int /*<<< orphan*/  lock; int /*<<< orphan*/  next_pn; TYPE_1__ key; } ;
struct macsec_secy {scalar_t__ key_len; int operational; int /*<<< orphan*/  icv_len; struct macsec_tx_sc tx_sc; } ;
struct genl_info {struct nlattr** attrs; } ;
struct TYPE_4__ {struct macsec_secy secy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 size_t MACSEC_ATTR_IFINDEX ; 
 int /*<<< orphan*/  MACSEC_KEYID_LEN ; 
 size_t MACSEC_SA_ATTR_ACTIVE ; 
 size_t MACSEC_SA_ATTR_AN ; 
 size_t MACSEC_SA_ATTR_KEY ; 
 size_t MACSEC_SA_ATTR_KEYID ; 
 int /*<<< orphan*/  MACSEC_SA_ATTR_MAX ; 
 size_t MACSEC_SA_ATTR_PN ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct genl_info*) ; 
 struct net_device* FUNC3 (int /*<<< orphan*/ ,struct nlattr**) ; 
 int FUNC4 (struct macsec_tx_sa*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct macsec_tx_sa*) ; 
 struct macsec_tx_sa* FUNC6 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC9 (struct nlattr*) ; 
 unsigned char FUNC10 (struct nlattr*) ; 
 scalar_t__ FUNC11 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct nlattr**,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC14 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct macsec_tx_sa*) ; 
 struct macsec_tx_sa* FUNC16 (int /*<<< orphan*/ ) ; 
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
	struct macsec_tx_sc *tx_sc;
	struct macsec_tx_sa *tx_sa;
	unsigned char assoc_num;
	struct nlattr *tb_sa[MACSEC_SA_ATTR_MAX + 1];
	int err;

	if (!attrs[MACSEC_ATTR_IFINDEX])
		return -EINVAL;

	if (FUNC13(attrs, tb_sa))
		return -EINVAL;

	if (!FUNC21(tb_sa))
		return -EINVAL;

	FUNC17();
	dev = FUNC3(FUNC2(info), attrs);
	if (FUNC0(dev)) {
		FUNC18();
		return FUNC1(dev);
	}

	secy = &FUNC7(dev)->secy;
	tx_sc = &secy->tx_sc;

	assoc_num = FUNC10(tb_sa[MACSEC_SA_ATTR_AN]);

	if (FUNC11(tb_sa[MACSEC_SA_ATTR_KEY]) != secy->key_len) {
		FUNC14("macsec: nl: add_txsa: bad key length: %d != %d\n",
			  FUNC11(tb_sa[MACSEC_SA_ATTR_KEY]), secy->key_len);
		FUNC18();
		return -EINVAL;
	}

	tx_sa = FUNC16(tx_sc->sa[assoc_num]);
	if (tx_sa) {
		FUNC18();
		return -EBUSY;
	}

	tx_sa = FUNC6(sizeof(*tx_sa), GFP_KERNEL);
	if (!tx_sa) {
		FUNC18();
		return -ENOMEM;
	}

	err = FUNC4(tx_sa, FUNC8(tb_sa[MACSEC_SA_ATTR_KEY]),
			 secy->key_len, secy->icv_len);
	if (err < 0) {
		FUNC5(tx_sa);
		FUNC18();
		return err;
	}

	FUNC12(tx_sa->key.id, tb_sa[MACSEC_SA_ATTR_KEYID], MACSEC_KEYID_LEN);

	FUNC19(&tx_sa->lock);
	tx_sa->next_pn = FUNC9(tb_sa[MACSEC_SA_ATTR_PN]);
	FUNC20(&tx_sa->lock);

	if (tb_sa[MACSEC_SA_ATTR_ACTIVE])
		tx_sa->active = !!FUNC10(tb_sa[MACSEC_SA_ATTR_ACTIVE]);

	if (assoc_num == tx_sc->encoding_sa && tx_sa->active)
		secy->operational = true;

	FUNC15(tx_sc->sa[assoc_num], tx_sa);

	FUNC18();

	return 0;
}