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
struct orinoco_private {int /*<<< orphan*/  desired_essid; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int /*<<< orphan*/  length; scalar_t__ flags; } ;

/* Variables and functions */
 int E2BIG ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  IW_ESSID_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct orinoco_private* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct orinoco_private*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct orinoco_private*,unsigned long*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				  struct iw_request_info *info,
				  struct iw_point *erq,
				  char *essidbuf)
{
	struct orinoco_private *priv = FUNC2(dev);
	unsigned long flags;

	/* Note : ESSID is ignored in Ad-Hoc demo mode, but we can set it
	 * anyway... - Jean II */

	/* Hum... Should not use Wireless Extension constant (may change),
	 * should use our own... - Jean II */
	if (erq->length > IW_ESSID_MAX_SIZE)
		return -E2BIG;

	if (FUNC3(priv, &flags) != 0)
		return -EBUSY;

	/* NULL the string (for NULL termination & ESSID = ANY) - Jean II */
	FUNC1(priv->desired_essid, 0, sizeof(priv->desired_essid));

	/* If not ANY, get the new ESSID */
	if (erq->flags)
		FUNC0(priv->desired_essid, essidbuf, erq->length);

	FUNC4(priv, &flags);

	return -EINPROGRESS;		/* Call commit handler */
}