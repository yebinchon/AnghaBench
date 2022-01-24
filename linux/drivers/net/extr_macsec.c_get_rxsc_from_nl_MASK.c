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
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct macsec_secy {int dummy; } ;
struct macsec_rx_sc {int dummy; } ;
typedef  int /*<<< orphan*/  sci_t ;
struct TYPE_2__ {struct macsec_secy secy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 struct macsec_rx_sc* FUNC0 (struct net_device*) ; 
 struct macsec_rx_sc* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 size_t MACSEC_RXSC_ATTR_SCI ; 
 struct macsec_rx_sc* FUNC3 (struct macsec_secy*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC4 (struct net*,struct nlattr**) ; 
 TYPE_1__* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct nlattr*) ; 

__attribute__((used)) static struct macsec_rx_sc *FUNC7(struct net *net,
					     struct nlattr **attrs,
					     struct nlattr **tb_rxsc,
					     struct net_device **devp,
					     struct macsec_secy **secyp)
{
	struct net_device *dev;
	struct macsec_secy *secy;
	struct macsec_rx_sc *rx_sc;
	sci_t sci;

	dev = FUNC4(net, attrs);
	if (FUNC2(dev))
		return FUNC0(dev);

	secy = &FUNC5(dev)->secy;

	if (!tb_rxsc[MACSEC_RXSC_ATTR_SCI])
		return FUNC1(-EINVAL);

	sci = FUNC6(tb_rxsc[MACSEC_RXSC_ATTR_SCI]);
	rx_sc = FUNC3(secy, sci);
	if (!rx_sc)
		return FUNC1(-ENODEV);

	*secyp = secy;
	*devp = dev;

	return rx_sc;
}