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
typedef  size_t u32 ;
struct octeon_device {scalar_t__ num_oqs; int /*<<< orphan*/ ** droq; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct octeon_device*) ; 
 scalar_t__ FUNC4 (struct octeon_device*) ; 
 scalar_t__ FUNC5 (struct octeon_device*) ; 
 int /*<<< orphan*/  cn23xx_pf ; 
 int /*<<< orphan*/  cn23xx_vf ; 
 int /*<<< orphan*/  cn6xxx ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct octeon_device*,size_t,size_t,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int) ; 
 int /*<<< orphan*/ * FUNC10 (int,int) ; 

int FUNC11(struct octeon_device *oct)
{
	u32 num_descs = 0;
	u32 desc_size = 0;
	u32 oq_no = 0;
	int numa_node = FUNC6(&oct->pci_dev->dev);

	if (FUNC5(oct)) {
		num_descs =
			FUNC1(FUNC2(oct, cn6xxx));
		desc_size =
			FUNC0(FUNC2(oct, cn6xxx));
	} else if (FUNC3(oct)) {
		num_descs = FUNC1(FUNC2(oct, cn23xx_pf));
		desc_size = FUNC0(FUNC2(oct, cn23xx_pf));
	} else if (FUNC4(oct)) {
		num_descs = FUNC1(FUNC2(oct, cn23xx_vf));
		desc_size = FUNC0(FUNC2(oct, cn23xx_vf));
	}
	oct->num_oqs = 0;
	oct->droq[0] = FUNC10(sizeof(*oct->droq[0]), numa_node);
	if (!oct->droq[0])
		oct->droq[0] = FUNC9(sizeof(*oct->droq[0]));
	if (!oct->droq[0])
		return 1;

	if (FUNC7(oct, oq_no, num_descs, desc_size, NULL)) {
		FUNC8(oct->droq[oq_no]);
		oct->droq[oq_no] = NULL;
		return 1;
	}
	oct->num_oqs++;

	return 0;
}