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
typedef  int /*<<< orphan*/  efx_qword_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TX_TIMESTAMP_EVENT_TSTAMP_DATA_HI ; 
 int /*<<< orphan*/  TX_TIMESTAMP_EVENT_TSTAMP_DATA_LO ; 

__attribute__((used)) static u32 FUNC1(efx_qword_t *event)
{
	u32 tstamp;

	tstamp = FUNC0(*event, TX_TIMESTAMP_EVENT_TSTAMP_DATA_HI);
	tstamp <<= 16;
	tstamp |= FUNC0(*event, TX_TIMESTAMP_EVENT_TSTAMP_DATA_LO);

	return tstamp;
}