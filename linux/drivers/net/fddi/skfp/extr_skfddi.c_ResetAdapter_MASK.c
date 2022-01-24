#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* dev; } ;
struct s_smc {TYPE_1__ os; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC2 (struct s_smc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC4 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct s_smc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct s_smc*,int) ; 

__attribute__((used)) static void FUNC9(struct s_smc *smc)
{

	FUNC5("[fddi: ResetAdapter]\n");

	// Stop the adapter.

	FUNC1(smc);		// Stop all activity.

	// Clear the transmit and receive descriptor queues.
	FUNC4(smc);
	FUNC3(smc);

	// Restart the adapter.

	FUNC8(smc, 1);	// Initialize the SMT module.

	FUNC2(smc, (smc->os.dev)->dev_addr);	// Initialize the hardware.

	FUNC7(smc, 1);	// Insert into the ring again.
	FUNC0();

	// Restore original receive mode (multicasts, promiscuous, etc.).
	FUNC6(smc->os.dev);
}