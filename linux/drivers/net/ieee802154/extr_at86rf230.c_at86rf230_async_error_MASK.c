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
struct at86rf230_state_change {int dummy; } ;
struct at86rf230_local {TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATE_FORCE_TRX_OFF ; 
 int /*<<< orphan*/  at86rf230_async_error_recover ; 
 int /*<<< orphan*/  FUNC0 (struct at86rf230_local*,struct at86rf230_state_change*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static inline void
FUNC2(struct at86rf230_local *lp,
		      struct at86rf230_state_change *ctx, int rc)
{
	FUNC1(&lp->spi->dev, "spi_async error %d\n", rc);

	FUNC0(lp, ctx, STATE_FORCE_TRX_OFF,
				     at86rf230_async_error_recover);
}