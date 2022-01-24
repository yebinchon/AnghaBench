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
typedef  int u8 ;
struct mwifiex_private {int dummy; } ;

/* Variables and functions */
#define  MWIFIEX_TDLS_CONFIG_LINK 131 
#define  MWIFIEX_TDLS_CREATE_LINK 130 
#define  MWIFIEX_TDLS_DISABLE_LINK 129 
#define  MWIFIEX_TDLS_ENABLE_LINK 128 
 int FUNC0 (struct mwifiex_private*,int const*) ; 
 int FUNC1 (struct mwifiex_private*,int const*) ; 
 int FUNC2 (struct mwifiex_private*,int const*) ; 
 int FUNC3 (struct mwifiex_private*,int const*) ; 

int FUNC4(struct mwifiex_private *priv, const u8 *peer, u8 action)
{
	switch (action) {
	case MWIFIEX_TDLS_ENABLE_LINK:
		return FUNC3(priv, peer);
	case MWIFIEX_TDLS_DISABLE_LINK:
		return FUNC2(priv, peer);
	case MWIFIEX_TDLS_CREATE_LINK:
		return FUNC1(priv, peer);
	case MWIFIEX_TDLS_CONFIG_LINK:
		return FUNC0(priv, peer);
	}
	return 0;
}