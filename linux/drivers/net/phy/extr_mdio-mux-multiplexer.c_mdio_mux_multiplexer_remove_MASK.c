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
struct platform_device {int dummy; } ;
struct mdio_mux_multiplexer_state {int /*<<< orphan*/  muxc; scalar_t__ do_deselect; int /*<<< orphan*/  mux_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mdio_mux_multiplexer_state* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct mdio_mux_multiplexer_state *s = FUNC2(pdev);

	FUNC0(s->mux_handle);

	if (s->do_deselect)
		FUNC1(s->muxc);

	return 0;
}