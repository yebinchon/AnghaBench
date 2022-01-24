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
struct dma_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_desc*,int) ; 

__attribute__((used)) static void FUNC1(struct dma_desc *p, int disable_rx_ic,
				  int mode, int end, int bfsize)
{
	FUNC0(p, disable_rx_ic);
}