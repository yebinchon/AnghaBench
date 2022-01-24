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
struct orinoco_private {int /*<<< orphan*/  bitratemode; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; int fixed; scalar_t__ disabled; } ;

/* Variables and functions */
 int EBUSY ; 
 struct orinoco_private* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC3 (struct orinoco_private*,int*) ; 
 scalar_t__ FUNC4 (struct orinoco_private*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (struct orinoco_private*,unsigned long*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,
				 struct iw_request_info *info,
				 struct iw_param *rrq,
				 char *extra)
{
	struct orinoco_private *priv = FUNC0(dev);
	int err = 0;
	int bitrate, automatic;
	unsigned long flags;

	if (FUNC4(priv, &flags) != 0)
		return -EBUSY;

	FUNC2(priv->bitratemode, &bitrate, &automatic);

	/* If the interface is running we try to find more about the
	   current mode */
	if (FUNC1(dev)) {
		int act_bitrate;
		int lerr;

		/* Ignore errors if we can't get the actual bitrate */
		lerr = FUNC3(priv, &act_bitrate);
		if (!lerr)
			bitrate = act_bitrate;
	}

	FUNC5(priv, &flags);

	rrq->value = bitrate;
	rrq->fixed = !automatic;
	rrq->disabled = 0;

	return err;
}