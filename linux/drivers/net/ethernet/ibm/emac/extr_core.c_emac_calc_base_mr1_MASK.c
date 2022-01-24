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
typedef  int /*<<< orphan*/  u32 ;
struct emac_instance {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMAC_FTR_EMAC4 ; 
 int /*<<< orphan*/  FUNC0 (struct emac_instance*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct emac_instance*,int,int) ; 
 scalar_t__ FUNC2 (struct emac_instance*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC3(struct emac_instance *dev, int tx_size, int rx_size)
{
	return FUNC2(dev, EMAC_FTR_EMAC4) ?
		FUNC0(dev, tx_size, rx_size) :
		FUNC1(dev, tx_size, rx_size);
}