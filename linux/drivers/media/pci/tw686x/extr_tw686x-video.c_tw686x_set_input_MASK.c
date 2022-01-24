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
struct tw686x_video_channel {unsigned int input; size_t ch; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/ * VDMA_CHANNEL_CONFIG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct tw686x_video_channel *vc, unsigned int i)
{
	u32 val;

	vc->input = i;

	val = FUNC0(vc->dev, VDMA_CHANNEL_CONFIG[vc->ch]);
	val &= ~(0x3 << 30);
	val |= i << 30;
	FUNC1(vc->dev, VDMA_CHANNEL_CONFIG[vc->ch], val);
}