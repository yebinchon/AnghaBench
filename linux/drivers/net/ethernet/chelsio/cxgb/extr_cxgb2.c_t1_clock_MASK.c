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
typedef  int u32 ;
struct adapter {int t1powersave; int /*<<< orphan*/  tpi_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_ELMER0_GPO ; 
 int EALREADY ; 
 int ENODEV ; 
 int HCLOCK ; 
 int LCLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct adapter *adapter, int mode)
{
	u32 val;
	int M_CORE_VAL;
	int M_MEM_VAL;

	enum {
		M_CORE_BITS	= 9,
		T_CORE_VAL	= 0,
		T_CORE_BITS	= 2,
		N_CORE_VAL	= 0,
		N_CORE_BITS	= 2,
		M_MEM_BITS	= 9,
		T_MEM_VAL	= 0,
		T_MEM_BITS	= 2,
		N_MEM_VAL	= 0,
		N_MEM_BITS	= 2,
		NP_LOAD		= 1 << 17,
		S_LOAD_MEM	= 1 << 5,
		S_LOAD_CORE	= 1 << 6,
		S_CLOCK		= 1 << 3
	};

	if (!FUNC5(adapter))
		return -ENODEV;	/* Can't re-clock this chip. */

	if (mode & 2)
		return 0;	/* show current mode. */

	if ((adapter->t1powersave & 1) == (mode & 1))
		return -EALREADY;	/* ASIC already running in mode. */

	if ((mode & 1) == HCLOCK) {
		M_CORE_VAL = 0x14;
		M_MEM_VAL = 0x18;
		adapter->t1powersave = HCLOCK;	/* overclock */
	} else {
		M_CORE_VAL = 0xe;
		M_MEM_VAL = 0x10;
		adapter->t1powersave = LCLOCK;	/* underclock */
	}

	/* Don't interrupt this serial stream! */
	FUNC3(&adapter->tpi_lock);

	/* Initialize for ASIC core */
	FUNC0(adapter, A_ELMER0_GPO, &val);
	val |= NP_LOAD;
	FUNC6(50);
	FUNC1(adapter, A_ELMER0_GPO, val);
	FUNC6(50);
	FUNC0(adapter, A_ELMER0_GPO, &val);
	val &= ~S_LOAD_CORE;
	val &= ~S_CLOCK;
	FUNC1(adapter, A_ELMER0_GPO, val);
	FUNC6(50);

	/* Serial program the ASIC clock synthesizer */
	FUNC2(adapter, T_CORE_VAL, T_CORE_BITS);
	FUNC2(adapter, N_CORE_VAL, N_CORE_BITS);
	FUNC2(adapter, M_CORE_VAL, M_CORE_BITS);
	FUNC6(50);

	/* Finish ASIC core */
	FUNC0(adapter, A_ELMER0_GPO, &val);
	val |= S_LOAD_CORE;
	FUNC6(50);
	FUNC1(adapter, A_ELMER0_GPO, val);
	FUNC6(50);
	FUNC0(adapter, A_ELMER0_GPO, &val);
	val &= ~S_LOAD_CORE;
	FUNC6(50);
	FUNC1(adapter, A_ELMER0_GPO, val);
	FUNC6(50);

	/* Initialize for memory */
	FUNC0(adapter, A_ELMER0_GPO, &val);
	val |= NP_LOAD;
	FUNC6(50);
	FUNC1(adapter, A_ELMER0_GPO, val);
	FUNC6(50);
	FUNC0(adapter, A_ELMER0_GPO, &val);
	val &= ~S_LOAD_MEM;
	val &= ~S_CLOCK;
	FUNC6(50);
	FUNC1(adapter, A_ELMER0_GPO, val);
	FUNC6(50);

	/* Serial program the memory clock synthesizer */
	FUNC2(adapter, T_MEM_VAL, T_MEM_BITS);
	FUNC2(adapter, N_MEM_VAL, N_MEM_BITS);
	FUNC2(adapter, M_MEM_VAL, M_MEM_BITS);
	FUNC6(50);

	/* Finish memory */
	FUNC0(adapter, A_ELMER0_GPO, &val);
	val |= S_LOAD_MEM;
	FUNC6(50);
	FUNC1(adapter, A_ELMER0_GPO, val);
	FUNC6(50);
	FUNC0(adapter, A_ELMER0_GPO, &val);
	val &= ~S_LOAD_MEM;
	FUNC6(50);
	FUNC1(adapter, A_ELMER0_GPO, val);

	FUNC4(&adapter->tpi_lock);

	return 0;
}