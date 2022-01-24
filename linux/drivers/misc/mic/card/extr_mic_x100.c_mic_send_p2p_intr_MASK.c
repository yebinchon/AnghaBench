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
struct mic_mw {int dummy; } ;

/* Variables and functions */
 int MIC_X100_NUM_SBOX_IRQ ; 
 int /*<<< orphan*/  FUNC0 (struct mic_mw*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mic_mw*,int) ; 

void FUNC2(int db, struct mic_mw *mw)
{
	int rdmasr_index;

	if (db < MIC_X100_NUM_SBOX_IRQ) {
		FUNC1(mw, db);
	} else {
		rdmasr_index = db - MIC_X100_NUM_SBOX_IRQ;
		FUNC0(mw, rdmasr_index);
	}
}