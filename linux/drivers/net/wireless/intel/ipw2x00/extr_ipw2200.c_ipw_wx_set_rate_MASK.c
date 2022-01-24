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
struct TYPE_3__ {int value; int fixed; } ;
union iwreq_data {TYPE_1__ bitrate; } ;
typedef  int u32 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int rates_mask; int /*<<< orphan*/  mutex; int /*<<< orphan*/  config; TYPE_2__* ieee; } ;
struct TYPE_4__ {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_FIXED_RATE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int LIBIPW_CCK_RATE_11MB_MASK ; 
 int LIBIPW_CCK_RATE_1MB_MASK ; 
 int LIBIPW_CCK_RATE_2MB_MASK ; 
 int LIBIPW_CCK_RATE_5MB_MASK ; 
 int LIBIPW_DEFAULT_RATES_MASK ; 
 int LIBIPW_OFDM_RATE_12MB_MASK ; 
 int LIBIPW_OFDM_RATE_18MB_MASK ; 
 int LIBIPW_OFDM_RATE_24MB_MASK ; 
 int LIBIPW_OFDM_RATE_36MB_MASK ; 
 int LIBIPW_OFDM_RATE_48MB_MASK ; 
 int LIBIPW_OFDM_RATE_54MB_MASK ; 
 int LIBIPW_OFDM_RATE_6MB_MASK ; 
 int LIBIPW_OFDM_RATE_9MB_MASK ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipw_priv*,int /*<<< orphan*/ ) ; 
 struct ipw_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev,
			   struct iw_request_info *info,
			   union iwreq_data *wrqu, char *extra)
{
	/* TODO: We should use semaphores or locks for access to priv */
	struct ipw_priv *priv = FUNC5(dev);
	u32 target_rate = wrqu->bitrate.value;
	u32 fixed, mask;

	/* value = -1, fixed = 0 means auto only, so we should use all rates offered by AP */
	/* value = X, fixed = 1 means only rate X */
	/* value = X, fixed = 0 means all rates lower equal X */

	if (target_rate == -1) {
		fixed = 0;
		mask = LIBIPW_DEFAULT_RATES_MASK;
		/* Now we should reassociate */
		goto apply;
	}

	mask = 0;
	fixed = wrqu->bitrate.fixed;

	if (target_rate == 1000000 || !fixed)
		mask |= LIBIPW_CCK_RATE_1MB_MASK;
	if (target_rate == 1000000)
		goto apply;

	if (target_rate == 2000000 || !fixed)
		mask |= LIBIPW_CCK_RATE_2MB_MASK;
	if (target_rate == 2000000)
		goto apply;

	if (target_rate == 5500000 || !fixed)
		mask |= LIBIPW_CCK_RATE_5MB_MASK;
	if (target_rate == 5500000)
		goto apply;

	if (target_rate == 6000000 || !fixed)
		mask |= LIBIPW_OFDM_RATE_6MB_MASK;
	if (target_rate == 6000000)
		goto apply;

	if (target_rate == 9000000 || !fixed)
		mask |= LIBIPW_OFDM_RATE_9MB_MASK;
	if (target_rate == 9000000)
		goto apply;

	if (target_rate == 11000000 || !fixed)
		mask |= LIBIPW_CCK_RATE_11MB_MASK;
	if (target_rate == 11000000)
		goto apply;

	if (target_rate == 12000000 || !fixed)
		mask |= LIBIPW_OFDM_RATE_12MB_MASK;
	if (target_rate == 12000000)
		goto apply;

	if (target_rate == 18000000 || !fixed)
		mask |= LIBIPW_OFDM_RATE_18MB_MASK;
	if (target_rate == 18000000)
		goto apply;

	if (target_rate == 24000000 || !fixed)
		mask |= LIBIPW_OFDM_RATE_24MB_MASK;
	if (target_rate == 24000000)
		goto apply;

	if (target_rate == 36000000 || !fixed)
		mask |= LIBIPW_OFDM_RATE_36MB_MASK;
	if (target_rate == 36000000)
		goto apply;

	if (target_rate == 48000000 || !fixed)
		mask |= LIBIPW_OFDM_RATE_48MB_MASK;
	if (target_rate == 48000000)
		goto apply;

	if (target_rate == 54000000 || !fixed)
		mask |= LIBIPW_OFDM_RATE_54MB_MASK;
	if (target_rate == 54000000)
		goto apply;

	FUNC1("invalid rate specified, returning error\n");
	return -EINVAL;

      apply:
	FUNC1("Setting rate mask to 0x%08X [%s]\n",
		     mask, fixed ? "fixed" : "sub-rates");
	FUNC6(&priv->mutex);
	if (mask == LIBIPW_DEFAULT_RATES_MASK) {
		priv->config &= ~CFG_FIXED_RATE;
		FUNC4(priv, priv->ieee->mode);
	} else
		priv->config |= CFG_FIXED_RATE;

	if (priv->rates_mask == mask) {
		FUNC1("Mask set to current mask.\n");
		FUNC7(&priv->mutex);
		return 0;
	}

	priv->rates_mask = mask;

	/* Network configuration changed -- force [re]association */
	FUNC0("[re]association triggered due to rates change.\n");
	if (!FUNC3(priv))
		FUNC2(priv);

	FUNC7(&priv->mutex);
	return 0;
}