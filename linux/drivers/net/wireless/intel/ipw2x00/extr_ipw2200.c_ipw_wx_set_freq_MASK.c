#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct iw_freq {scalar_t__ m; int e; } ;
union iwreq_data {struct iw_freq freq; } ;
typedef  scalar_t__ u8 ;
struct net_device {int dummy; } ;
struct libipw_geo {TYPE_2__* a; TYPE_1__* bg; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int /*<<< orphan*/  mutex; TYPE_3__* ieee; } ;
struct TYPE_9__ {scalar_t__ iw_mode; } ;
struct TYPE_8__ {scalar_t__ flags; } ;
struct TYPE_7__ {scalar_t__ flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ IW_MODE_ADHOC ; 
 int LIBIPW_24GHZ_BAND ; 
 scalar_t__ LIBIPW_CH_PASSIVE_ONLY ; 
 int FUNC1 (struct ipw_priv*,scalar_t__) ; 
 int FUNC2 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_3__*,scalar_t__) ; 
 struct libipw_geo* FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*,scalar_t__) ; 
 struct ipw_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev,
			   struct iw_request_info *info,
			   union iwreq_data *wrqu, char *extra)
{
	struct ipw_priv *priv = FUNC6(dev);
	const struct libipw_geo *geo = FUNC4(priv->ieee);
	struct iw_freq *fwrq = &wrqu->freq;
	int ret = 0, i;
	u8 channel, flags;
	int band;

	if (fwrq->m == 0) {
		FUNC0("SET Freq/Channel -> any\n");
		FUNC7(&priv->mutex);
		ret = FUNC1(priv, 0);
		FUNC8(&priv->mutex);
		return ret;
	}
	/* if setting by freq convert to channel */
	if (fwrq->e == 1) {
		channel = FUNC3(priv->ieee, fwrq->m);
		if (channel == 0)
			return -EINVAL;
	} else
		channel = fwrq->m;

	if (!(band = FUNC5(priv->ieee, channel)))
		return -EINVAL;

	if (priv->ieee->iw_mode == IW_MODE_ADHOC) {
		i = FUNC2(priv->ieee, channel);
		if (i == -1)
			return -EINVAL;

		flags = (band == LIBIPW_24GHZ_BAND) ?
		    geo->bg[i].flags : geo->a[i].flags;
		if (flags & LIBIPW_CH_PASSIVE_ONLY) {
			FUNC0("Invalid Ad-Hoc channel for 802.11a\n");
			return -EINVAL;
		}
	}

	FUNC0("SET Freq/Channel -> %d\n", fwrq->m);
	FUNC7(&priv->mutex);
	ret = FUNC1(priv, channel);
	FUNC8(&priv->mutex);
	return ret;
}