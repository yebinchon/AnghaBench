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
typedef  int /*<<< orphan*/  u32 ;
struct cmng_init_input {int /*<<< orphan*/  port_rate; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct cmng_init {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cmng_init_input const*,int /*<<< orphan*/ ,struct cmng_init*) ; 
 int /*<<< orphan*/  FUNC2 (struct cmng_init_input const*,int /*<<< orphan*/ ,struct cmng_init*) ; 
 int /*<<< orphan*/  FUNC3 (struct cmng_init_input const*,int /*<<< orphan*/ ,struct cmng_init*) ; 
 int /*<<< orphan*/  FUNC4 (struct cmng_init_input const*,struct cmng_init*) ; 
 int /*<<< orphan*/  FUNC5 (struct cmng_init*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC6(const struct cmng_init_input *input_data,
				   struct cmng_init *ram_data)
{
	u32 r_param;
	FUNC5(ram_data, 0, sizeof(struct cmng_init));

	ram_data->port.flags = input_data->flags;

	/* number of bytes transmitted in a rate of 10Gbps
	 * in one usec = 1.25KB.
	 */
	r_param = FUNC0(input_data->port_rate);
	FUNC2(input_data, r_param, ram_data);
	FUNC3(input_data, r_param, ram_data);
	FUNC1(input_data, r_param, ram_data);
	FUNC4(input_data, ram_data);
}