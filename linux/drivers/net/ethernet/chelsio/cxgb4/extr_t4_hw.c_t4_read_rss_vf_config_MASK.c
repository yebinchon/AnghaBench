#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CHELSIO_T5 ; 
 int KEYWREN_F ; 
 unsigned int T6_VFWRADDR_M ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  TP_RSS_CONFIG_VRT_A ; 
 int /*<<< orphan*/  TP_RSS_VFH_CONFIG_A ; 
 int /*<<< orphan*/  TP_RSS_VFL_CONFIG_A ; 
 int VFRDEN_F ; 
 int VFRDRG_F ; 
 unsigned int VFWRADDR_M ; 
 int FUNC2 (unsigned int) ; 
 int VFWREN_F ; 
 int FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct adapter *adapter, unsigned int index,
			   u32 *vfl, u32 *vfh, bool sleep_ok)
{
	u32 vrt, mask, data;

	if (FUNC0(adapter->params.chip) <= CHELSIO_T5) {
		mask = FUNC2(VFWRADDR_M);
		data = FUNC2(index);
	} else {
		 mask =  FUNC1(T6_VFWRADDR_M);
		 data = FUNC1(index);
	}

	/* Request that the index'th VF Table values be read into VFL/VFH.
	 */
	vrt = FUNC3(adapter, TP_RSS_CONFIG_VRT_A);
	vrt &= ~(VFRDRG_F | VFWREN_F | KEYWREN_F | mask);
	vrt |= data | VFRDEN_F;
	FUNC5(adapter, TP_RSS_CONFIG_VRT_A, vrt);

	/* Grab the VFL/VFH values ...
	 */
	FUNC4(adapter, vfl, 1, TP_RSS_VFL_CONFIG_A, sleep_ok);
	FUNC4(adapter, vfh, 1, TP_RSS_VFH_CONFIG_A, sleep_ok);
}