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
typedef  size_t u8 ;
struct mwifiex_private {scalar_t__ bss_started; scalar_t__ media_connected; } ;
struct mwifiex_adapter {size_t priv_num; struct mwifiex_private** priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mwifiex_private*) ; 
 size_t MWIFIEX_BSS_COEX_COUNT ; 
 scalar_t__ MWIFIEX_BSS_ROLE_STA ; 
 scalar_t__ MWIFIEX_BSS_ROLE_UAP ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*,int) ; 

void FUNC2(struct mwifiex_adapter *adapter)
{
	u8 i;
	struct mwifiex_private *priv;
	u8 count = 0;

	for (i = 0; i < adapter->priv_num; i++) {
		if (adapter->priv[i]) {
			priv = adapter->priv[i];
			if (FUNC0(priv) == MWIFIEX_BSS_ROLE_STA) {
				if (priv->media_connected)
					count++;
			}
			if (FUNC0(priv) == MWIFIEX_BSS_ROLE_UAP) {
				if (priv->bss_started)
					count++;
			}
		}
		if (count >= MWIFIEX_BSS_COEX_COUNT)
			break;
	}
	if (count >= MWIFIEX_BSS_COEX_COUNT)
		FUNC1(adapter, true);
	else
		FUNC1(adapter, false);
}