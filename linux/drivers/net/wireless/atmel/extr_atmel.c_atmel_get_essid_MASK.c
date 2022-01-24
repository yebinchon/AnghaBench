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
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {scalar_t__ length; int flags; } ;
struct atmel_private {scalar_t__ new_SSID_size; scalar_t__ SSID_size; int /*<<< orphan*/  connect_to_any_BSS; int /*<<< orphan*/  SSID; int /*<<< orphan*/  new_SSID; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct atmel_private* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev,
			   struct iw_request_info *info,
			   struct iw_point *dwrq,
			   char *extra)
{
	struct atmel_private *priv = FUNC1(dev);

	/* Get the current SSID */
	if (priv->new_SSID_size != 0) {
		FUNC0(extra, priv->new_SSID, priv->new_SSID_size);
		dwrq->length = priv->new_SSID_size;
	} else {
		FUNC0(extra, priv->SSID, priv->SSID_size);
		dwrq->length = priv->SSID_size;
	}

	dwrq->flags = !priv->connect_to_any_BSS; /* active */

	return 0;
}