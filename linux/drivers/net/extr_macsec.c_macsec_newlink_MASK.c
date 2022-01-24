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
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int /*<<< orphan*/  rx_handler; scalar_t__ mtu; int /*<<< orphan*/  priv_flags; } ;
struct net {int dummy; } ;
struct macsec_dev {struct net_device* real_dev; } ;
typedef  int /*<<< orphan*/  sci_t ;
typedef  int /*<<< orphan*/  rx_handler_func_t ;

/* Variables and functions */
 scalar_t__ DEFAULT_ICV_LEN ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  IFF_MACSEC ; 
 size_t IFLA_LINK ; 
 size_t IFLA_MACSEC_ICV_LEN ; 
 size_t IFLA_MACSEC_PORT ; 
 size_t IFLA_MACSEC_SCI ; 
 int /*<<< orphan*/  MACSEC_PORT_ES ; 
 struct net_device* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (struct net_device*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC5 (struct macsec_dev*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  macsec_generation ; 
 int /*<<< orphan*/ * macsec_handle_frame ; 
 struct macsec_dev* FUNC7 (struct net_device*) ; 
 int FUNC8 (struct net_device*,struct net_device*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC12 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC13 (struct nlattr*) ; 
 scalar_t__ FUNC14 (struct nlattr*) ; 
 int FUNC15 (struct net_device*,struct net_device*) ; 
 int FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*) ; 

__attribute__((used)) static int FUNC20(struct net *net, struct net_device *dev,
			  struct nlattr *tb[], struct nlattr *data[],
			  struct netlink_ext_ack *extack)
{
	struct macsec_dev *macsec = FUNC7(dev);
	struct net_device *real_dev;
	int err;
	sci_t sci;
	u8 icv_len = DEFAULT_ICV_LEN;
	rx_handler_func_t *rx_handler;

	if (!tb[IFLA_LINK])
		return -EINVAL;
	real_dev = FUNC0(net, FUNC13(tb[IFLA_LINK]));
	if (!real_dev)
		return -ENODEV;

	dev->priv_flags |= IFF_MACSEC;

	macsec->real_dev = real_dev;

	if (data && data[IFLA_MACSEC_ICV_LEN])
		icv_len = FUNC14(data[IFLA_MACSEC_ICV_LEN]);
	dev->mtu = real_dev->mtu - icv_len - FUNC6(true);

	rx_handler = FUNC17(real_dev->rx_handler);
	if (rx_handler && rx_handler != macsec_handle_frame)
		return -EBUSY;

	err = FUNC16(dev);
	if (err < 0)
		return err;

	err = FUNC8(real_dev, dev, extack);
	if (err < 0)
		goto unregister;

	/* need to be already registered so that ->init has run and
	 * the MAC addr is set
	 */
	if (data && data[IFLA_MACSEC_SCI])
		sci = FUNC12(data[IFLA_MACSEC_SCI]);
	else if (data && data[IFLA_MACSEC_PORT])
		sci = FUNC1(dev, FUNC11(data[IFLA_MACSEC_PORT]));
	else
		sci = FUNC1(dev, MACSEC_PORT_ES);

	if (rx_handler && FUNC18(real_dev, sci)) {
		err = -EBUSY;
		goto unlink;
	}

	err = FUNC3(dev, sci, icv_len);
	if (err)
		goto unlink;

	if (data) {
		err = FUNC4(dev, data);
		if (err)
			goto del_dev;
	}

	err = FUNC15(real_dev, dev);
	if (err < 0)
		goto del_dev;

	FUNC10(real_dev, dev);
	FUNC2(dev);

	macsec_generation++;

	return 0;

del_dev:
	FUNC5(macsec);
unlink:
	FUNC9(real_dev, dev);
unregister:
	FUNC19(dev);
	return err;
}