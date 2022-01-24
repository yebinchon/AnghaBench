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
struct il_priv {int dummy; } ;

/* Variables and functions */
 int IL_NUM_RX_CHAINS_MULTIPLE ; 
 int IL_NUM_RX_CHAINS_SINGLE ; 
 scalar_t__ FUNC0 (struct il_priv*) ; 

__attribute__((used)) static int
FUNC1(struct il_priv *il)
{
	/* # of Rx chains to use when expecting MIMO. */
	if (FUNC0(il))
		return IL_NUM_RX_CHAINS_SINGLE;
	else
		return IL_NUM_RX_CHAINS_MULTIPLE;
}