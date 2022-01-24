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
typedef  int /*<<< orphan*/  u32 ;
struct mt9m032 {int /*<<< orphan*/  pix_clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mt9m032*) ; 

__attribute__((used)) static u32 FUNC3(struct mt9m032 *sensor, unsigned int width)
{
	unsigned int effective_width;
	u32 ns;

	effective_width = width + 716; /* empirical value */
	ns = FUNC1(1000000000ULL * effective_width, sensor->pix_clock);
	FUNC0(FUNC2(sensor),	"MT9M032 line time: %u ns\n", ns);
	return ns;
}