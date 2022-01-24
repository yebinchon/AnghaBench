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
typedef  unsigned short u32 ;
struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  BPLI ; 

__attribute__((used)) static void FUNC1(struct ieee80211_hw *dev,
				 unsigned short bi, unsigned short li)
{
	struct adm8211_priv *priv = dev->priv;
	u32 reg;

	/* BP (beacon interval) = data->beacon_interval
	 * LI (listen interval) = data->listen_interval (in beacon intervals) */
	reg = (bi << 16) | li;
	FUNC0(BPLI, reg);
}