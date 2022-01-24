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
typedef  int u32 ;
struct alx_hw {int dummy; } ;

/* Variables and functions */
 int ADVERTISED_1000baseT_Full ; 
 int ADVERTISED_100baseT_Full ; 
 int ADVERTISED_100baseT_Half ; 
 int ADVERTISED_10baseT_Full ; 
 int ADVERTISED_10baseT_Half ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SUPPORTED_1000baseT_Full ; 
 int SUPPORTED_100baseT_Full ; 
 int SUPPORTED_100baseT_Half ; 
 int SUPPORTED_10baseT_Full ; 
 int SUPPORTED_10baseT_Half ; 
 scalar_t__ FUNC1 (struct alx_hw*) ; 

__attribute__((used)) static u32 FUNC2(struct alx_hw *hw)
{
	u32 supported = SUPPORTED_10baseT_Half |
			SUPPORTED_10baseT_Full |
			SUPPORTED_100baseT_Half |
			SUPPORTED_100baseT_Full;

	if (FUNC1(hw))
		supported |= SUPPORTED_1000baseT_Full;

	FUNC0(SUPPORTED_10baseT_Half != ADVERTISED_10baseT_Half);
	FUNC0(SUPPORTED_10baseT_Full != ADVERTISED_10baseT_Full);
	FUNC0(SUPPORTED_100baseT_Half != ADVERTISED_100baseT_Half);
	FUNC0(SUPPORTED_100baseT_Full != ADVERTISED_100baseT_Full);
	FUNC0(SUPPORTED_1000baseT_Full != ADVERTISED_1000baseT_Full);

	return supported;
}