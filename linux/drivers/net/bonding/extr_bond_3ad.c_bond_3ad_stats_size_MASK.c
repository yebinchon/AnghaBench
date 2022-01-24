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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 size_t FUNC0 (int) ; 

size_t FUNC1(void)
{
	return FUNC0(sizeof(u64)) + /* BOND_3AD_STAT_LACPDU_RX */
	       FUNC0(sizeof(u64)) + /* BOND_3AD_STAT_LACPDU_TX */
	       FUNC0(sizeof(u64)) + /* BOND_3AD_STAT_LACPDU_UNKNOWN_RX */
	       FUNC0(sizeof(u64)) + /* BOND_3AD_STAT_LACPDU_ILLEGAL_RX */
	       FUNC0(sizeof(u64)) + /* BOND_3AD_STAT_MARKER_RX */
	       FUNC0(sizeof(u64)) + /* BOND_3AD_STAT_MARKER_TX */
	       FUNC0(sizeof(u64)) + /* BOND_3AD_STAT_MARKER_RESP_RX */
	       FUNC0(sizeof(u64)) + /* BOND_3AD_STAT_MARKER_RESP_TX */
	       FUNC0(sizeof(u64)); /* BOND_3AD_STAT_MARKER_UNKNOWN_RX */
}