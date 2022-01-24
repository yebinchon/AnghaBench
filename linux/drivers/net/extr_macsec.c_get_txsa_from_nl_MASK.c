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
typedef  size_t u8 ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct macsec_tx_sc {int /*<<< orphan*/ * sa; } ;
struct macsec_tx_sa {int dummy; } ;
struct macsec_secy {struct macsec_tx_sc tx_sc; } ;
struct TYPE_2__ {struct macsec_secy secy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 struct macsec_tx_sa* FUNC0 (struct net_device*) ; 
 struct macsec_tx_sa* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 size_t MACSEC_NUM_AN ; 
 size_t MACSEC_SA_ATTR_AN ; 
 struct net_device* FUNC3 (struct net*,struct nlattr**) ; 
 TYPE_1__* FUNC4 (struct net_device*) ; 
 size_t FUNC5 (struct nlattr*) ; 
 struct macsec_tx_sa* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct macsec_tx_sa *FUNC7(struct net *net,
					     struct nlattr **attrs,
					     struct nlattr **tb_sa,
					     struct net_device **devp,
					     struct macsec_secy **secyp,
					     struct macsec_tx_sc **scp,
					     u8 *assoc_num)
{
	struct net_device *dev;
	struct macsec_secy *secy;
	struct macsec_tx_sc *tx_sc;
	struct macsec_tx_sa *tx_sa;

	if (!tb_sa[MACSEC_SA_ATTR_AN])
		return FUNC1(-EINVAL);

	*assoc_num = FUNC5(tb_sa[MACSEC_SA_ATTR_AN]);

	dev = FUNC3(net, attrs);
	if (FUNC2(dev))
		return FUNC0(dev);

	if (*assoc_num >= MACSEC_NUM_AN)
		return FUNC1(-EINVAL);

	secy = &FUNC4(dev)->secy;
	tx_sc = &secy->tx_sc;

	tx_sa = FUNC6(tx_sc->sa[*assoc_num]);
	if (!tx_sa)
		return FUNC1(-ENODEV);

	*devp = dev;
	*scp = tx_sc;
	*secyp = secy;
	return tx_sa;
}