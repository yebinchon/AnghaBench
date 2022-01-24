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

/* Variables and functions */
 int /*<<< orphan*/  CN6XXX_SLI_WINDOW_CTL ; 
 int /*<<< orphan*/  PCIE_MPS_DEFAULT ; 
 int /*<<< orphan*/  PCIE_MRRS_512B ; 
 int /*<<< orphan*/  FUNC0 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct octeon_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct octeon_device *oct)
{
	FUNC4(oct, PCIE_MPS_DEFAULT);
	FUNC5(oct, PCIE_MRRS_512B);
	FUNC1(oct);

	FUNC2(oct);
	FUNC0(oct);
	FUNC3(oct);

	/* Default error timeout value should be 0x200000 to avoid host hang
	 * when reads invalid register
	 */
	FUNC6(oct, CN6XXX_SLI_WINDOW_CTL, 0x200000ULL);
	return 0;
}