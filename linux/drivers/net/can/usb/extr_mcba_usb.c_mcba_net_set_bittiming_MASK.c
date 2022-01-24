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
typedef  int u16 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int bitrate; } ;
struct TYPE_4__ {TYPE_1__ bittiming; } ;
struct mcba_priv {TYPE_2__ can; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mcba_priv*,int const) ; 
 struct mcba_priv* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev)
{
	struct mcba_priv *priv = FUNC1(netdev);
	const u16 bitrate_kbps = priv->can.bittiming.bitrate / 1000;

	FUNC0(priv, bitrate_kbps);

	return 0;
}