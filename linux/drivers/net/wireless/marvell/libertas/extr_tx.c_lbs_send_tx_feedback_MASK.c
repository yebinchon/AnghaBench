#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct tx_radiotap_hdr {scalar_t__ data_retries; } ;
struct lbs_private {scalar_t__ connect_status; scalar_t__ mesh_dev; scalar_t__ dev; TYPE_2__* currenttxskb; scalar_t__ txretrycount; TYPE_1__* wdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  protocol; scalar_t__ data; } ;
struct TYPE_4__ {scalar_t__ iftype; } ;

/* Variables and functions */
 scalar_t__ LBS_CONNECTED ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(struct lbs_private *priv, u32 try_count)
{
	struct tx_radiotap_hdr *radiotap_hdr;

	if (priv->wdev->iftype != NL80211_IFTYPE_MONITOR ||
	    priv->currenttxskb == NULL)
		return;

	radiotap_hdr = (struct tx_radiotap_hdr *)priv->currenttxskb->data;

	radiotap_hdr->data_retries = try_count ?
		(1 + priv->txretrycount - try_count) : 0;

	priv->currenttxskb->protocol = FUNC0(priv->currenttxskb,
						      priv->dev);
	FUNC2(priv->currenttxskb);

	priv->currenttxskb = NULL;

	if (priv->connect_status == LBS_CONNECTED)
		FUNC3(priv->dev);

	if (priv->mesh_dev && FUNC1(priv->mesh_dev))
		FUNC3(priv->mesh_dev);
}