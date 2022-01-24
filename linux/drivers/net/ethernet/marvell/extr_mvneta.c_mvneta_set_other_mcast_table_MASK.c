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
struct mvneta_port {int /*<<< orphan*/  mcast_count; } ;

/* Variables and functions */
 scalar_t__ MVNETA_DA_FILT_OTH_MCAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mvneta_port*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC2(struct mvneta_port *pp, int queue)
{
	int offset;
	u32 val;

	if (queue == -1) {
		FUNC0(pp->mcast_count, 0, sizeof(pp->mcast_count));
		val = 0;
	} else {
		FUNC0(pp->mcast_count, 1, sizeof(pp->mcast_count));
		val = 0x1 | (queue << 1);
		val |= (val << 24) | (val << 16) | (val << 8);
	}

	for (offset = 0; offset <= 0xfc; offset += 4)
		FUNC1(pp, MVNETA_DA_FILT_OTH_MCAST + offset, val);
}