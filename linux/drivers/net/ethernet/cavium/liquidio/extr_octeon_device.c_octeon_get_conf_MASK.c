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
struct octeon_device {int dummy; } ;
struct octeon_config {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct octeon_device*) ; 
 scalar_t__ FUNC2 (struct octeon_device*) ; 
 scalar_t__ FUNC3 (struct octeon_device*) ; 
 int /*<<< orphan*/  cn23xx_pf ; 
 int /*<<< orphan*/  cn23xx_vf ; 
 int /*<<< orphan*/  cn6xxx ; 

struct octeon_config *FUNC4(struct octeon_device *oct)
{
	struct octeon_config *default_oct_conf = NULL;

	/* check the OCTEON Device model & return the corresponding octeon
	 * configuration
	 */

	if (FUNC3(oct)) {
		default_oct_conf =
			(struct octeon_config *)(FUNC0(oct, cn6xxx));
	} else if (FUNC1(oct)) {
		default_oct_conf = (struct octeon_config *)
			(FUNC0(oct, cn23xx_pf));
	} else if (FUNC2(oct)) {
		default_oct_conf = (struct octeon_config *)
			(FUNC0(oct, cn23xx_vf));
	}
	return default_oct_conf;
}