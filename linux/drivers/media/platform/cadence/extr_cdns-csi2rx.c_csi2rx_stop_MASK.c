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
struct csi2rx_priv {unsigned int max_streams; int /*<<< orphan*/  dev; int /*<<< orphan*/  source_subdev; int /*<<< orphan*/  p_clk; int /*<<< orphan*/ * pixel_clk; scalar_t__ base; int /*<<< orphan*/  sys_clk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  s_stream ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  video ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct csi2rx_priv *csi2rx)
{
	unsigned int i;

	FUNC2(csi2rx->p_clk);
	FUNC1(csi2rx->sys_clk);

	for (i = 0; i < csi2rx->max_streams; i++) {
		FUNC5(0, csi2rx->base + FUNC0(i));

		FUNC1(csi2rx->pixel_clk[i]);
	}

	FUNC1(csi2rx->p_clk);

	if (FUNC4(csi2rx->source_subdev, video, s_stream, false))
		FUNC3(csi2rx->dev, "Couldn't disable our subdev\n");
}