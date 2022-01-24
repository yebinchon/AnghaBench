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
struct sja1105_reset_cmd {int /*<<< orphan*/  por_rst; int /*<<< orphan*/  cold_rst; int /*<<< orphan*/  warm_rst; int /*<<< orphan*/  otp_rst; int /*<<< orphan*/  car_rst; int /*<<< orphan*/  cfg_rst; int /*<<< orphan*/  switch_rst; } ;

/* Variables and functions */
 int SJA1105_SIZE_RESET_CMD ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *,int,int,int const) ; 

__attribute__((used)) static void
FUNC2(void *buf, const struct sja1105_reset_cmd *reset)
{
	const int size = SJA1105_SIZE_RESET_CMD;

	FUNC0(buf, 0, size);

	FUNC1(buf, &reset->switch_rst, 8, 8, size);
	FUNC1(buf, &reset->cfg_rst,    7, 7, size);
	FUNC1(buf, &reset->car_rst,    5, 5, size);
	FUNC1(buf, &reset->otp_rst,    4, 4, size);
	FUNC1(buf, &reset->warm_rst,   3, 3, size);
	FUNC1(buf, &reset->cold_rst,   2, 2, size);
	FUNC1(buf, &reset->por_rst,    1, 1, size);
}