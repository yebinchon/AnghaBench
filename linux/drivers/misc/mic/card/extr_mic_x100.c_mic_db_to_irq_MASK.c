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
struct mic_driver {int dummy; } ;

/* Variables and functions */
 int MIC_X100_NUM_SBOX_IRQ ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 

int FUNC2(struct mic_driver *mdrv, int db)
{
	int rdmasr_index;

	/*
	 * The total number of doorbell interrupts on the card are 16. Indices
	 * 0-8 falls in the SBOX category and 8-15 fall in the RDMASR category.
	 */
	if (db < MIC_X100_NUM_SBOX_IRQ) {
		return FUNC1(db);
	} else {
		rdmasr_index = db - MIC_X100_NUM_SBOX_IRQ;
		return FUNC0(rdmasr_index);
	}
}