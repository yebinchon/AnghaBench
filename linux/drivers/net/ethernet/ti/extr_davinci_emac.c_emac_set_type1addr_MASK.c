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
typedef  char u32 ;
struct emac_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMAC_MACADDRHI ; 
 int /*<<< orphan*/  EMAC_MACADDRLO ; 
 int /*<<< orphan*/  EMAC_MACINDEX ; 
 int /*<<< orphan*/  FUNC0 (struct emac_priv*,char,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static void FUNC2(struct emac_priv *priv, u32 ch, char *mac_addr)
{
	u32 val;
	FUNC1(EMAC_MACINDEX, ch);
	val = ((mac_addr[5] << 8) | mac_addr[4]);
	FUNC1(EMAC_MACADDRLO, val);
	val = ((mac_addr[3] << 24) | (mac_addr[2] << 16) | \
	       (mac_addr[1] << 8) | (mac_addr[0]));
	FUNC1(EMAC_MACADDRHI, val);
	FUNC0(priv, ch, mac_addr);
}